(set-logic NIA)
(set-info :status unsat)
(assert (not (exists ((?X Int)) (= (* ?X ?X) ?X))))
(check-sat)
(exit)
