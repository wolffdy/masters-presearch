{
module Parser where
import Data.Char (isSpace, isAlpha, isUpper)
import Control.Monad (liftM2)
import Data.Text (unpack)
import Turtle (strict, input)
import Data.List (isPrefixOf)
}

%name parser
%tokentype { Token }
%error { parseError }

%token
      '::'            { TokenColons }
      '->'            { TokenArrow }
      '=>'            { TokenBigArrow }
      type            { TokenType $$ }
      class_decl      { TokenClassMeta }
      type_decl       { TokenTypeMeta }
      data_decl       { TokenDataMeta }
      '='             { TokenEquals }
      where           { TokenWhere }
      '|'             { TokenOr }
      '['             { TokenOSB }
      ']'             { TokenCSB }
      '('             { TokenOB }
      ')'             { TokenCB }
      '*'             { TokenAny }
      name            { TokenName $$ }
      fname           { TokenFName $$ }
      ','             { TokenComma }
      '{-#'           { TokenODir }
      '#-}'           { TokenCDir }

%right in
%left TODECL
%left FDECLS
%left '->'
%left ','
%left '|'
%left APP
%left '::'
%%

Decls : Decl         { [$1] }
      | Decls Decl   { $2:$1 }

Decl : FDecls          %prec TODECL     { FDecls $1 }
     | CDecl                            { CDecl $1 }
     | data_decl TypeExp '=' TypeExp    { DDecl $2 $4 }
     | type_decl TypeExp '=' TypeExp    { TDecl $2 $4 }
     | '{-#' TypeExp '#-}'              { Directive $2 }


CDecl : class_decl TypeExp where FDecls               { UCDecl $2 $4 }
      | class_decl TypeExp '=>' TypeExp where FDecls  { QCDecl $2 $4 $6 }
      | class_decl TypeExp '=>' TypeExp FDecls where FDecls  { Q2CDecl $2 $4 $5 $7 }
      | class_decl TypeExp FDecls '=>' TypeExp FDecls where FDecls  { Q3CDecl $2 $3 $5 $6 $8 }
      | class_decl TypeExp FDecls where FDecls               { U2CDecl $2 $3 $5 }

FDecl : fname '::' TypeExp              { UFDecl $1 $3 }
     | fname '::' TypeExp '=>' TypeExp  { QFDecl $1 $3 $5 }
     | type '::' TypeExp '=>' TypeExp   { TQFDecl $1 $3 $5 }
     | type '::' TypeExp                { TUFDecl $1 $3 }
     | '(' FDecl ')'                    { FDBrack $2 }

FDecls : FDecl                        { [$1] }
       | FDecls FDecl  %prec FDECLS   { $2:$1 }

TypeExp  : name                    { Name $1 }
         | type                    { Type $1 }
         | '*'                     { Any }
         | TypeExp '|' TypeExp     { Or $1 $3 }
         | TypeExp ',' TypeExp     { Sep $1 $3 }
         | TypeExp '->' TypeExp    { Function $1 $3 }
         | '[' TypeExp ']'         { SBrack $2 }
         | '(' TypeExp ')'         { Brack $2 }
         | TypeExp TypeExp   %prec APP     { App $1 $2 }
{


parseError :: [Token] -> a
parseError _ = error "Parse error"


type Decls = [Decl]
type FDecls = [FDecl]

data CDecl
    = UCDecl TypeExp FDecls
    | U2CDecl TypeExp FDecls FDecls
    | QCDecl TypeExp TypeExp FDecls
    | Q2CDecl TypeExp TypeExp FDecls FDecls
    | Q3CDecl TypeExp FDecls TypeExp FDecls FDecls
    deriving Show

data Decl
    = FDecls FDecls
    | CDecl CDecl
    | DDecl TypeExp TypeExp
    | TDecl TypeExp TypeExp
    | Directive TypeExp
    deriving Show

data FDecl
    = UFDecl String TypeExp
    | TUFDecl String TypeExp
    | QFDecl String TypeExp TypeExp
    | TQFDecl String TypeExp TypeExp
    | FDBrack FDecl
    deriving Show

data TypeExp
    = Name String
    | Type String
    | Function TypeExp TypeExp
    | Sep TypeExp TypeExp
    | Or TypeExp TypeExp
    | SBrack TypeExp
    | Brack TypeExp
    | App TypeExp TypeExp
    | TEDir TypeExp TypeExp
    | Any
    deriving Show

data Token
      = TokenColons
      | TokenArrow
      | TokenBigArrow
      | TokenTimes
      | TokenEquals
      | TokenWhere
      | TokenClassMeta
      | TokenTypeMeta
      | TokenType String
      | TokenDataMeta
      | TokenOr
      | TokenOSB
      | TokenCSB
      | TokenOB
      | TokenCB
      | TokenODir
      | TokenCDir
      | TokenAny
      | TokenName String
      | TokenFName String
      | TokenComma
      | TokenHash
      deriving Show


lexer :: String -> [Token]
lexer [] = []
lexer (c:cs)
      | isSpace c = lexer cs
      | isAlpha c = lexVar (c:cs)
lexer ('=':'>':cs) = TokenBigArrow : lexer cs
lexer ('=':cs) = TokenEquals : lexer cs
lexer ('*':cs) = TokenAny : lexer cs
lexer ('|':cs) = TokenOr : lexer cs
lexer ('[':cs) = TokenOSB : lexer cs
lexer (']':cs) = TokenCSB : lexer cs
lexer ('(':cs) = lexBrackets ('(':cs)
lexer (')':cs) = TokenCB : lexer cs
lexer (':':':':cs) = TokenColons : lexer cs
lexer (',':cs) = TokenComma : lexer cs
lexer ('-':'>':cs) = TokenArrow : lexer cs
lexer ('{':'-':'#':cs) = ignoreDirective cs
lexer ('#':cs) = lexer cs

isComma c = c == ','
isBracket c = c == '(' || c == ')' || c == '[' || c == ']'
fand = liftM2 (&&)
isValName = fand (fand (not . isSpace) (not . isComma)) (not . isBracket)

ignoreDirective cs =
    let (pre, post) = split "#-}" cs in
    lexer post

split splitter tosplit =
    if isPrefixOf splitter tosplit then
        ("", drop (length splitter) tosplit)
    else
       let c:cs = tosplit in
       let (pre, post) = split splitter cs in
       (c:pre, post)

lookaheadAndLex proposed current rest =
    case rest of
        a:b:c:cs -> case a:b:[c] of
                    " ::" -> TokenFName current : TokenColons : lexer cs
                    otherwise -> (proposed current) : lexer rest
        otherwise -> (proposed current) : lexer rest

lexVar cs =
   case Prelude.span isValName cs of
      ("class",rest) -> TokenClassMeta : lexer rest
      ("data",rest)  -> TokenDataMeta : lexer rest
      ("type",rest)  -> TokenTypeMeta : lexer rest
      ("newtype",rest)  -> TokenTypeMeta : lexer rest
      ("where",rest)  -> TokenWhere   : lexer rest
      (c:cs,rest)   ->   if isUpper c then lookaheadAndLex TokenType (c:cs) rest else lookaheadAndLex TokenName (c:cs) rest

lexBrackets ('(':cs) =
    let (cts, next:rest) = Prelude.span isValName cs in
    if next == ')' then lookaheadAndLex TokenName cts rest else TokenOB : (lexer cs)

}
