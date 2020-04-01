(set-logic ALL_SUPPORTED)
(set-info :status sat)
(set-option :produce-models true)
(set-option :sets-ext true)
(declare-datatype Rec ((mkRec (r1 (_ BitVec 2)) (r2 (_ BitVec 2)))))
(declare-fun A () (Set Rec))
(declare-fun B () (Set Rec))
(declare-fun universe () (Set Rec))
(declare-fun x () Rec)
(assert (= (card A) 5))
(assert (= (card B) 5))
(assert (= (card (intersection A B)) 1))
(assert (= universe (as univset (Set Rec))))
(check-sat)
