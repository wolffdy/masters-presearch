(set-option :incremental false)
(set-info :status unsat)
(set-logic QF_BV)
(declare-fun x1 () (_ BitVec 4))
(declare-fun y1 () (_ BitVec 4))
(declare-fun x2 () (_ BitVec 2))
(declare-fun y2 () (_ BitVec 2))
(declare-fun x3 () (_ BitVec 1))
(declare-fun y3 () (_ BitVec 1))
(assert (= x1 y1))
(assert (= x1 (concat x2 x2)))
(assert (= x2 (concat x3 x3)))
(assert (= y1 (concat y2 y2)))
(assert (= y2 (concat y3 y3)))
(check-sat-assuming ( (not (= x3 y3)) ))
