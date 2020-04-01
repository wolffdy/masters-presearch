; EXPECT: sat
(set-logic ALL_SUPPORTED)
(set-info :status sat)
(define-sort SetInt () (Set Int))
(declare-fun A () (Set Int))
(declare-fun B () (Set Int))
(declare-fun x () Int)
(declare-fun y () Int)
(assert (member x (union A B)))
(assert (not (member y A)))
(assert (not (member y B)))
(check-sat)
