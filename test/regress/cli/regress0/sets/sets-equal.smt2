(set-logic ALL)
(set-info :status unsat)
(declare-fun x () Int)
(declare-fun y () Int)
(declare-fun z () Int)
(assert (= x y))
(declare-fun a () (Set Int))
(declare-fun b () (Set Int))
(assert (not (set.member x a)))
(assert (set.member y (set.union a b)))
(assert (= x z))
(assert (not (set.member z a)))
(assert (= a b))
(check-sat)