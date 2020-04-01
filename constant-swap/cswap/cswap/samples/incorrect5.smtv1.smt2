(set-option :incremental false)
(set-info :status unsat)
(set-logic QF_AUF)
(declare-sort Index 0)
(declare-sort Element 0)
(declare-fun v0 () (Array Index Element))
(declare-fun v1 () Index)
(declare-fun v2 () Index)
(declare-fun v3 () Index)
(declare-fun v4 () Element)
(check-sat-assuming ( (let ((_let_0 (store v0 v3 v4))) (let ((_let_1 (= v0 _let_0))) (let ((_let_2 (distinct v2 v1))) (let ((_let_3 (= v3 v2))) (let ((_let_4 (distinct (select _let_0 v2) (select _let_0 v2)))) (let ((_let_5 (= (select _let_0 v2) v4))) (let ((_let_6 (distinct (select v0 v2) v4))) (let ((_let_7 (ite _let_4 _let_0 _let_0))) (let ((_let_8 (ite _let_5 _let_7 _let_0))) (let ((_let_9 (ite _let_4 _let_7 v0))) (let ((_let_10 (ite _let_1 _let_0 _let_9))) (let ((_let_11 (ite _let_6 v3 v3))) (let ((_let_12 (ite _let_3 v2 v1))) (let ((_let_13 (ite _let_5 _let_12 v1))) (let ((_let_14 (ite _let_2 v1 (ite _let_4 _let_11 (ite _let_4 v3 _let_11))))) (let ((_let_15 (ite _let_4 (ite _let_4 (ite _let_4 _let_11 (ite _let_4 v3 _let_11)) (ite _let_4 _let_11 (ite _let_4 v3 _let_11))) _let_12))) (let ((_let_16 (ite _let_4 v2 (ite _let_4 v3 _let_11)))) (let ((_let_17 (ite _let_1 _let_12 v2))) (let ((_let_18 (ite _let_1 (select _let_0 v2) v4))) (let ((_let_19 (ite _let_4 (select v0 v2) (select v0 v2)))) (let ((_let_20 (ite _let_3 v4 _let_18))) (let ((_let_21 (ite _let_5 (select v0 v2) (ite _let_6 (select v0 v2) (select v0 v2))))) (let ((_let_22 (ite _let_3 (ite _let_4 _let_18 _let_19) (ite _let_4 _let_18 _let_19)))) (let ((_let_23 (ite _let_6 v4 (ite _let_6 (select v0 v2) (select v0 v2))))) (let ((_let_24 (ite _let_5 _let_23 (ite _let_6 (select v0 v2) (select v0 v2))))) (let ((_let_25 (ite _let_2 (ite _let_4 _let_18 _let_19) (select v0 v2)))) (let ((_let_26 (store _let_8 _let_16 (ite _let_6 (select v0 v2) (select v0 v2))))) (let ((_let_27 (select _let_7 v2))) (let ((_let_28 (select _let_9 _let_17))) (let ((_let_29 (store _let_26 (ite _let_4 _let_11 (ite _let_4 v3 _let_11)) _let_21))) (let ((_let_30 (select (ite _let_3 _let_0 _let_7) v2))) (let ((_let_31 (distinct _let_13 _let_13))) (let ((_let_32 (distinct (ite _let_4 v3 _let_11) _let_13))) (let ((_let_33 (= _let_28 _let_18))) (let ((_let_34 (distinct _let_25 _let_20))) (let ((_let_35 (distinct _let_24 v4))) (let ((_let_36 (ite (xor (=> (=> (not (and (= (= (= _let_23 _let_27) (= _let_18 (ite _let_6 (select v0 v2) (select v0 v2)))) (distinct (ite _let_6 (select v0 v2) (select v0 v2)) _let_21)) (not (=> (ite (= _let_16 v1) (distinct _let_14 v3) (= v2 _let_11)) (xor (xor (distinct _let_21 _let_27) (distinct _let_19 v4)) _let_2))))) (=> (not (=> (or (= _let_9 _let_9) (= _let_26 (ite _let_6 _let_0 _let_8))) (ite (= (distinct _let_26 _let_7) (or (= _let_30 _let_25) (= (ite _let_4 (ite _let_4 _let_11 (ite _let_4 v3 _let_11)) (ite _let_4 _let_11 (ite _let_4 v3 _let_11))) v1))) (= v2 _let_14) (and (distinct (ite _let_3 _let_0 _let_7) _let_10) (= (select _let_0 v2) _let_18))))) (or (= (= _let_19 _let_27) (= (ite _let_5 _let_8 _let_0) (ite _let_2 (ite _let_5 _let_8 _let_0) _let_0))) (= (= _let_19 _let_27) (= (ite _let_5 _let_8 _let_0) (ite _let_2 (ite _let_5 _let_8 _let_0) _let_0)))))) (=> (not (and (= (= (= _let_23 _let_27) (= _let_18 (ite _let_6 (select v0 v2) (select v0 v2)))) (distinct (ite _let_6 (select v0 v2) (select v0 v2)) _let_21)) (not (=> (ite (= _let_16 v1) (distinct _let_14 v3) (= v2 _let_11)) (xor (xor (distinct _let_21 _let_27) (distinct _let_19 v4)) _let_2))))) (=> (not (=> (or (= _let_9 _let_9) (= _let_26 (ite _let_6 _let_0 _let_8))) (ite (= (distinct _let_26 _let_7) (or (= _let_30 _let_25) (= (ite _let_4 (ite _let_4 _let_11 (ite _let_4 v3 _let_11)) (ite _let_4 _let_11 (ite _let_4 v3 _let_11))) v1))) (= v2 _let_14) (and (distinct (ite _let_3 _let_0 _let_7) _let_10) (= (select _let_0 v2) _let_18))))) (or (= (= _let_19 _let_27) (= (ite _let_5 _let_8 _let_0) (ite _let_2 (ite _let_5 _let_8 _let_0) _let_0))) (= (= _let_19 _let_27) (= (ite _let_5 _let_8 _let_0) (ite _let_2 (ite _let_5 _let_8 _let_0) _let_0))))))) (=> (and (xor (not (xor (ite (ite (distinct (select v0 v2) _let_22) (not (distinct (ite _let_2 (ite _let_5 _let_8 _let_0) _let_0) _let_10)) (or _let_33 (= _let_21 _let_28))) _let_33 (= (= _let_15 (ite _let_4 (ite _let_4 _let_11 (ite _let_4 v3 _let_11)) (ite _let_4 _let_11 (ite _let_4 v3 _let_11)))) (= _let_22 _let_28))) (ite (or (distinct v0 (ite _let_5 _let_8 _let_0)) (= (= (ite (distinct _let_20 _let_19) (= _let_10 (ite _let_6 _let_0 _let_8)) (distinct _let_9 _let_8)) _let_32) (distinct v3 _let_15))) (=> (distinct _let_8 _let_0) (= v2 _let_14)) (or (distinct v0 (ite _let_5 _let_8 _let_0)) (= (= (ite (distinct _let_20 _let_19) (= _let_10 (ite _let_6 _let_0 _let_8)) (distinct _let_9 _let_8)) _let_32) (distinct v3 _let_15)))))) (xor (and (not (= _let_18 v4)) (not (= _let_18 v4))) (and (not (= _let_18 v4)) (not (= _let_18 v4))))) (not (= (not (ite _let_35 (=> (= _let_22 _let_22) (distinct _let_23 _let_28)) _let_35)) (or (or (xor (= _let_22 (ite _let_6 (select v0 v2) (select v0 v2))) (not (distinct v4 v4))) (or (ite (= v4 _let_19) (xor (not (distinct v3 v2)) (ite (= _let_24 _let_30) (= _let_24 _let_30) (= _let_25 _let_23))) (xor (not (distinct _let_29 _let_0)) (ite (xor (= _let_28 _let_19) _let_32) _let_35 _let_34))) (xor (= _let_14 _let_14) (distinct (ite _let_6 (select v0 v2) (select v0 v2)) _let_28)))) (and (ite (= (xor (and (distinct _let_26 (ite _let_2 (ite _let_5 _let_8 _let_0) _let_0)) (xor (= _let_16 v2) _let_5)) (xor _let_6 (and (= v1 _let_13) (or (= (select _let_0 v2) (select _let_0 v2)) (= (ite _let_6 (select v0 v2) (select v0 v2)) (select v0 v2)))))) (or (distinct _let_16 _let_17) (distinct _let_26 (ite _let_5 _let_8 _let_0)))) (and (distinct (ite _let_6 (select v0 v2) (select v0 v2)) (select v0 v2)) (= (ite _let_6 (select v0 v2) (select v0 v2)) _let_19)) (=> (= (ite _let_2 (ite _let_5 _let_8 _let_0) _let_0) (ite _let_2 (ite _let_5 _let_8 _let_0) _let_0)) (distinct _let_27 v4))) (=> _let_34 (distinct _let_27 (ite _let_4 _let_18 _let_19)))))))) (and (xor (not (xor (ite (ite (distinct (select v0 v2) _let_22) (not (distinct (ite _let_2 (ite _let_5 _let_8 _let_0) _let_0) _let_10)) (or _let_33 (= _let_21 _let_28))) _let_33 (= (= _let_15 (ite _let_4 (ite _let_4 _let_11 (ite _let_4 v3 _let_11)) (ite _let_4 _let_11 (ite _let_4 v3 _let_11)))) (= _let_22 _let_28))) (ite (or (distinct v0 (ite _let_5 _let_8 _let_0)) (= (= (ite (distinct _let_20 _let_19) (= _let_10 (ite _let_6 _let_0 _let_8)) (distinct _let_9 _let_8)) _let_32) (distinct v3 _let_15))) (=> (distinct _let_8 _let_0) (= v2 _let_14)) (or (distinct v0 (ite _let_5 _let_8 _let_0)) (= (= (ite (distinct _let_20 _let_19) (= _let_10 (ite _let_6 _let_0 _let_8)) (distinct _let_9 _let_8)) _let_32) (distinct v3 _let_15)))))) (xor (and (not (= _let_18 v4)) (not (= _let_18 v4))) (and (not (= _let_18 v4)) (not (= _let_18 v4))))) (not (= (not (ite _let_35 (=> (= _let_22 _let_22) (distinct _let_23 _let_28)) _let_35)) (or (or (xor (= _let_22 (ite _let_6 (select v0 v2) (select v0 v2))) (not (distinct v4 v4))) (or (ite (= v4 _let_19) (xor (not (distinct v3 v2)) (ite (= _let_24 _let_30) (= _let_24 _let_30) (= _let_25 _let_23))) (xor (not (distinct _let_29 _let_0)) (ite (xor (= _let_28 _let_19) _let_32) _let_35 _let_34))) (xor (= _let_14 _let_14) (distinct (ite _let_6 (select v0 v2) (select v0 v2)) _let_28)))) (and (ite (= (xor (and (distinct _let_26 (ite _let_2 (ite _let_5 _let_8 _let_0) _let_0)) (xor (= _let_16 v2) _let_5)) (xor _let_6 (and (= v1 _let_13) (or (= (select _let_0 v2) (select _let_0 v2)) (= (ite _let_6 (select v0 v2) (select v0 v2)) (select v0 v2)))))) (or (distinct _let_16 _let_17) (distinct _let_26 (ite _let_5 _let_8 _let_0)))) (and (distinct (ite _let_6 (select v0 v2) (select v0 v2)) (select v0 v2)) (= (ite _let_6 (select v0 v2) (select v0 v2)) _let_19)) (=> (= (ite _let_2 (ite _let_5 _let_8 _let_0) _let_0) (ite _let_2 (ite _let_5 _let_8 _let_0) _let_0)) (distinct _let_27 v4))) (=> _let_34 (distinct _let_27 (ite _let_4 _let_18 _let_19)))))))))) (not (not (ite (distinct _let_23 (select v0 v2)) (distinct _let_27 _let_27) (= _let_29 v0)))) (not (not (ite (distinct _let_23 (select v0 v2)) (distinct _let_27 _let_27) (= _let_29 v0))))))) (=> (=> _let_36 _let_36) (not (or (=> (=> (= _let_21 _let_22) (and (ite (= _let_16 _let_14) (and (= _let_30 _let_23) (= _let_25 _let_21)) (not (distinct (ite _let_6 (select v0 v2) (select v0 v2)) (ite _let_6 (select v0 v2) (select v0 v2))))) (not (not (distinct _let_25 _let_24))))) (= (= (not (= (= _let_3 _let_31) (= _let_21 _let_20))) (= (= (=> (= _let_13 _let_16) (= (select _let_0 v2) _let_19)) (distinct _let_24 _let_19)) (and (= _let_12 (ite _let_4 _let_11 (ite _let_4 v3 _let_11))) (= _let_30 _let_18)))) (=> (or (not (xor (= _let_26 _let_0) (= v2 _let_16))) (xor (distinct (select v0 v2) _let_30) (or _let_31 _let_1))) (and (= (= _let_9 (ite _let_3 _let_8 _let_7)) (= (not (= _let_19 (select _let_0 v2))) (distinct _let_11 (ite _let_4 _let_11 (ite _let_4 v3 _let_11))))) (= _let_21 _let_25))))) (ite (distinct _let_16 _let_12) (and (= _let_15 v3) (and (=> (distinct _let_0 (ite _let_3 _let_0 _let_7)) (and (=> (distinct _let_29 _let_10) (ite (xor (= v3 v3) (distinct _let_14 v1)) (distinct _let_13 _let_15) (not (= _let_25 _let_27)))) (= _let_22 _let_18))) (xor (=> (not (ite (ite (= (ite _let_4 _let_11 (ite _let_4 v3 _let_11)) (ite _let_4 v3 _let_11)) (= _let_28 (select _let_0 v2)) (distinct v3 v1)) (distinct _let_11 _let_14) (distinct v1 v3))) _let_4) (=> (=> _let_4 (ite (= v0 _let_8) (= _let_30 _let_30) (= (= _let_18 _let_23) (xor (xor (distinct _let_18 v4) (= _let_15 _let_12)) (distinct v4 _let_27))))) (= (select _let_0 v2) _let_25))))) (and (xor (distinct _let_14 _let_13) (xor (distinct _let_25 (select _let_0 v2)) (not (= _let_0 _let_0)))) (and (xor (or (=> (= (select _let_0 v2) _let_24) (= _let_23 _let_22)) (not (= _let_14 v2))) (=> (distinct _let_19 _let_23) (distinct (select _let_0 v2) _let_19))) (xor (= _let_18 (select _let_0 v2)) (distinct _let_10 _let_0))))))))))))))))))))))))))))))))))))))))))))) ))
