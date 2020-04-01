; COMMAND-LINE: --lang=smt2.5
; EXPECT: sat
(set-logic ALL)
(set-info :status sat)
(declare-datatypes () ((Enum0 (cons (data Int)) (None))))
(declare-datatypes () ((Enum1 (cons (data Bool)) (None))))
(declare-fun var_0 () Enum0)
(declare-fun var_1 () Enum1)
(assert (= (data var_0) 5))
(assert (data var_1))
(check-sat)
