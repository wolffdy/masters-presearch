(set-info :smt-lib-version 2.5)
(set-logic QF_SLIA)
(set-info :status sat)
(declare-fun x () String)
(assert (str.in.re (str.++ "bbbbbbbb" x) (re.* (re.++ (str.to.re "bbbb") (re.* (str.to.re "aaaa"))))))
(check-sat)
