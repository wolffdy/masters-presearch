(set-option :incremental false)
(set-info :status unsat)
(set-logic QF_BV)
(declare-fun v0 () (_ BitVec 4))
(declare-fun v1 () (_ BitVec 4))
(check-sat-assuming ( (let ((_let_0 (bvxor (_ bv15 4) (_ bv12 4)))) (let ((_let_1 (bvmul v1 ((_ zero_extend 2) ((_ sign_extend 1) (ite (bvslt v1 (_ bv13 4)) (_ bv1 1) (_ bv0 1))))))) (let ((_let_2 (bvashr ((_ zero_extend 3) (ite (bvugt _let_1 (bvshl v1 (_ bv13 4))) (_ bv1 1) (_ bv0 1))) (_ bv12 4)))) (let ((_let_3 (bvnor (_ bv13 4) (bvshl v1 (_ bv13 4))))) (let ((_let_4 (ite (bvsgt (_ bv12 4) (bvshl (_ bv13 4) (_ bv12 4))) (_ bv1 1) (_ bv0 1)))) (let ((_let_5 (ite (distinct ((_ zero_extend 0) _let_1) ((_ sign_extend 3) _let_4)) (_ bv1 1) (_ bv0 1)))) (let ((_let_6 (ite (= (_ bv1 1) ((_ extract 2 2) _let_2)) ((_ sign_extend 3) (ite (bvslt v1 (_ bv13 4)) (_ bv1 1) (_ bv0 1))) (ite (= (_ bv1 1) ((_ extract 3 3) (bvsub v1 (_ bv15 4)))) (bvshl (_ bv13 4) (_ bv12 4)) (_ bv13 4))))) (let ((_let_7 ((_ rotate_left 0) (ite (bvult (_ bv15 4) _let_1) (_ bv1 1) (_ bv0 1))))) (let ((_let_8 (ite (bvule (bvneg _let_2) ((_ zero_extend 3) _let_5)) (_ bv1 1) (_ bv0 1)))) (let ((_let_9 (bvneg (ite (bvult ((_ repeat 4) (ite (bvslt v1 (_ bv13 4)) (_ bv1 1) (_ bv0 1))) (_ bv6 4)) (_ bv1 1) (_ bv0 1))))) (let ((_let_10 (bvashr _let_8 _let_7))) (let ((_let_11 (bvnot (ite (bvslt v1 (_ bv13 4)) (_ bv1 1) (_ bv0 1))))) (let ((_let_12 (ite (bvsgt _let_9 _let_8) (_ bv1 1) (_ bv0 1)))) (let ((_let_13 (ite (bvuge (ite (bvsge (bvshl v1 (_ bv13 4)) (ite (= (_ bv1 1) ((_ extract 0 0) _let_7)) ((_ sign_extend 0) ((_ rotate_right 2) (_ bv15 4))) ((_ sign_extend 0) ((_ rotate_right 2) (_ bv15 4))))) (_ bv1 1) (_ bv0 1)) _let_5) (_ bv1 1) (_ bv0 1)))) (let ((_let_14 (bvsub _let_3 ((_ sign_extend 0) ((_ rotate_right 2) (_ bv15 4)))))) (let ((_let_15 ((_ zero_extend 3) _let_11))) (let ((_let_16 (bvcomp _let_15 (bvand (bvshl v1 (_ bv13 4)) (ite (= (_ bv1 1) ((_ extract 3 3) (bvsub v1 (_ bv15 4)))) (bvshl (_ bv13 4) (_ bv12 4)) (_ bv13 4)))))) (let ((_let_17 (ite (bvslt _let_11 _let_13) (_ bv1 1) (_ bv0 1)))) (let ((_let_18 (ite (bvslt _let_13 (ite (bvslt v1 (_ bv13 4)) (_ bv1 1) (_ bv0 1))) (_ bv1 1) (_ bv0 1)))) (let ((_let_19 (ite (distinct v0 (bvnand ((_ zero_extend 3) (ite (bvslt v1 (_ bv13 4)) (_ bv1 1) (_ bv0 1))) _let_6)) (_ bv1 1) (_ bv0 1)))) (let ((_let_20 ((_ zero_extend 3) _let_10))) (let ((_let_21 (bvult _let_15 (bvnand ((_ zero_extend 3) (ite (bvslt v1 (_ bv13 4)) (_ bv1 1) (_ bv0 1))) _let_6)))) (let ((_let_22 ((_ zero_extend 3) _let_7))) (let ((_let_23 ((_ sign_extend 3) _let_5))) (let ((_let_24 ((_ zero_extend 3) _let_18))) (let ((_let_25 (= _let_24 _let_1))) (let ((_let_26 (bvugt _let_12 _let_16))) (let ((_let_27 (= (bvneg (ite (bvslt v1 (_ bv13 4)) (_ bv1 1) (_ bv0 1))) _let_11))) (let ((_let_28 (bvult _let_12 _let_12))) (let ((_let_29 (= v0 ((_ sign_extend 3) (ite (bvslt v1 (_ bv13 4)) (_ bv1 1) (_ bv0 1)))))) (let ((_let_30 (bvult (ite (bvugt _let_1 (bvshl v1 (_ bv13 4))) (_ bv1 1) (_ bv0 1)) _let_18))) (let ((_let_31 (bvult _let_10 _let_13))) (let ((_let_32 (bvslt (ite (bvsge ((_ sign_extend 3) _let_4) (bvneg _let_2)) (_ bv1 1) (_ bv0 1)) _let_12))) (let ((_let_33 (bvugt ((_ zero_extend 3) (ite (bvslt v1 (_ bv13 4)) (_ bv1 1) (_ bv0 1))) v0))) (let ((_let_34 (bvule (bvneg _let_2) _let_15))) (let ((_let_35 (bvsge ((_ sign_extend 3) (ite (bvult ((_ repeat 4) (ite (bvslt v1 (_ bv13 4)) (_ bv1 1) (_ bv0 1))) (_ bv6 4)) (_ bv1 1) (_ bv0 1))) ((_ sign_extend 0) ((_ rotate_right 2) (_ bv15 4)))))) (let ((_let_36 (bvuge (_ bv15 4) (_ bv12 4)))) (let ((_let_37 (bvsge (_ bv13 4) ((_ sign_extend 3) _let_17)))) (let ((_let_38 (bvsge (ite (bvsge (bvshl v1 (_ bv13 4)) (ite (= (_ bv1 1) ((_ extract 0 0) _let_7)) ((_ sign_extend 0) ((_ rotate_right 2) (_ bv15 4))) ((_ sign_extend 0) ((_ rotate_right 2) (_ bv15 4))))) (_ bv1 1) (_ bv0 1)) (ite (bvugt _let_1 (bvshl v1 (_ bv13 4))) (_ bv1 1) (_ bv0 1))))) (let ((_let_39 (bvsle ((_ zero_extend 0) _let_1) ((_ zero_extend 0) _let_1)))) (let ((_let_40 (bvugt ((_ zero_extend 3) (ite (bvugt _let_1 (bvshl v1 (_ bv13 4))) (_ bv1 1) (_ bv0 1))) (bvand (bvshl v1 (_ bv13 4)) (ite (= (_ bv1 1) ((_ extract 3 3) (bvsub v1 (_ bv15 4)))) (bvshl (_ bv13 4) (_ bv12 4)) (_ bv13 4)))))) (let ((_let_41 (bvslt ((_ sign_extend 3) (ite (bvugt _let_1 (bvshl v1 (_ bv13 4))) (_ bv1 1) (_ bv0 1))) _let_3))) (let ((_let_42 (bvsle _let_1 _let_6))) (let ((_let_43 (bvslt (bvshl v1 (_ bv13 4)) (bvsub v1 (_ bv15 4))))) (let ((_let_44 (= (ite (bvugt _let_1 (bvshl v1 (_ bv13 4))) (_ bv1 1) (_ bv0 1)) _let_17))) (let ((_let_45 (bvugt ((_ rotate_right 2) (_ bv15 4)) _let_23))) (let ((_let_46 (bvule _let_4 _let_17))) (let ((_let_47 (bvuge ((_ zero_extend 3) _let_19) _let_1))) (let ((_let_48 (bvult _let_13 (ite (bvsge _let_9 _let_16) (_ bv1 1) (_ bv0 1))))) (let ((_let_49 (bvsgt ((_ rotate_right 2) (_ bv15 4)) (_ bv6 4)))) (let ((_let_50 (= ((_ zero_extend 3) _let_5) ((_ rotate_right 2) (_ bv15 4))))) (let ((_let_51 (bvslt (ite (bvsge (bvshl v1 (_ bv13 4)) (ite (= (_ bv1 1) ((_ extract 0 0) _let_7)) ((_ sign_extend 0) ((_ rotate_right 2) (_ bv15 4))) ((_ sign_extend 0) ((_ rotate_right 2) (_ bv15 4))))) (_ bv1 1) (_ bv0 1)) _let_13))) (let ((_let_52 (= ((_ zero_extend 3) _let_12) (bvnand ((_ zero_extend 3) (ite (bvslt v1 (_ bv13 4)) (_ bv1 1) (_ bv0 1))) _let_6)))) (let ((_let_53 (bvuge ((_ sign_extend 1) _let_4) ((_ sign_extend 1) (ite (bvslt v1 (_ bv13 4)) (_ bv1 1) (_ bv0 1)))))) (let ((_let_54 (= ((_ sign_extend 3) (bvneg (ite (bvslt v1 (_ bv13 4)) (_ bv1 1) (_ bv0 1)))) _let_1))) (let ((_let_55 (bvsle (_ bv15 4) (bvneg _let_2)))) (let ((_let_56 (not _let_54))) (let ((_let_57 (not (bvsgt _let_4 _let_11)))) (let ((_let_58 (not (distinct ((_ sign_extend 0) ((_ rotate_right 2) (_ bv15 4))) ((_ sign_extend 0) ((_ rotate_right 2) (_ bv15 4))))))) (let ((_let_59 (not _let_51))) (let ((_let_60 (not _let_31))) (let ((_let_61 (not (bvugt _let_13 _let_18)))) (let ((_let_62 (not (bvsge (_ bv12 4) ((_ zero_extend 3) (ite (bvult (_ bv15 4) _let_1) (_ bv1 1) (_ bv0 1))))))) (let ((_let_63 (not (bvule ((_ sign_extend 3) (bvnand _let_17 (ite (bvsge (bvshl v1 (_ bv13 4)) (ite (= (_ bv1 1) ((_ extract 0 0) _let_7)) ((_ sign_extend 0) ((_ rotate_right 2) (_ bv15 4))) ((_ sign_extend 0) ((_ rotate_right 2) (_ bv15 4))))) (_ bv1 1) (_ bv0 1)))) (ite (= (_ bv1 1) ((_ extract 3 3) (bvsub v1 (_ bv15 4)))) (bvshl (_ bv13 4) (_ bv12 4)) (_ bv13 4)))))) (let ((_let_64 (not (= ((_ zero_extend 1) _let_19) ((_ sign_extend 1) (ite (bvslt v1 (_ bv13 4)) (_ bv1 1) (_ bv0 1))))))) (let ((_let_65 (not (bvugt (ite (distinct (bvsub v1 (_ bv15 4)) ((_ sign_extend 3) _let_7)) (_ bv1 1) (_ bv0 1)) _let_4)))) (let ((_let_66 (not (bvult _let_12 _let_16)))) (let ((_let_67 (not (bvsge ((_ sign_extend 3) (ite (bvugt _let_1 (bvshl v1 (_ bv13 4))) (_ bv1 1) (_ bv0 1))) _let_6)))) (let ((_let_68 (not (bvuge ((_ rotate_right 2) (_ bv15 4)) _let_20)))) (let ((_let_69 (not (bvule _let_1 ((_ zero_extend 3) _let_4))))) (let ((_let_70 (not (bvult (bvneg (ite (bvslt v1 (_ bv13 4)) (_ bv1 1) (_ bv0 1))) _let_18)))) (let ((_let_71 (not (bvult _let_12 _let_4)))) (and (or (= (bvshl v1 (_ bv13 4)) ((_ zero_extend 3) (ite (bvsge (bvshl v1 (_ bv13 4)) (ite (= (_ bv1 1) ((_ extract 0 0) _let_7)) ((_ sign_extend 0) ((_ rotate_right 2) (_ bv15 4))) ((_ sign_extend 0) ((_ rotate_right 2) (_ bv15 4))))) (_ bv1 1) (_ bv0 1)))) (not (bvslt _let_3 _let_14)) _let_41) (or (not _let_39) (not (distinct _let_0 _let_0)) _let_56) (or _let_57 (bvugt (ite (= (_ bv1 1) ((_ extract 0 0) _let_7)) ((_ sign_extend 0) ((_ rotate_right 2) (_ bv15 4))) ((_ sign_extend 0) ((_ rotate_right 2) (_ bv15 4)))) (_ bv15 4)) _let_56) (or _let_45 (not _let_28) (not (bvsle _let_6 v1))) (or _let_58 (bvuge ((_ sign_extend 3) _let_12) (_ bv13 4)) _let_51) (or (bvslt ((_ zero_extend 3) _let_4) (ite (= (_ bv1 1) ((_ extract 0 0) _let_7)) ((_ sign_extend 0) ((_ rotate_right 2) (_ bv15 4))) ((_ sign_extend 0) ((_ rotate_right 2) (_ bv15 4))))) (not _let_38) _let_44) (or _let_26 _let_57 _let_32) (or _let_52 _let_59 (not _let_49)) (or _let_28 (not _let_45) _let_53) (or (bvule (bvshl (_ bv13 4) (_ bv12 4)) _let_23) _let_60 (not _let_44)) (or _let_61 (not _let_21) _let_43) (or _let_38 (not (bvsle (ite (= (_ bv1 1) ((_ extract 3 3) (bvsub v1 (_ bv15 4)))) (bvshl (_ bv13 4) (_ bv12 4)) (_ bv13 4)) ((_ sign_extend 3) (ite (bvult ((_ repeat 4) (ite (bvslt v1 (_ bv13 4)) (_ bv1 1) (_ bv0 1))) (_ bv6 4)) (_ bv1 1) (_ bv0 1))))) _let_62) (or (not (bvslt ((_ sign_extend 3) _let_9) (_ bv13 4))) _let_55 _let_33) (or _let_60 _let_25 (bvsle _let_11 _let_18)) (or _let_33 _let_50 _let_63) (or (bvult (bvneg (ite (bvslt v1 (_ bv13 4)) (_ bv1 1) (_ bv0 1))) _let_18) _let_64 (not _let_25)) (or (not (bvsge _let_13 _let_17)) _let_65 (not _let_37)) (or _let_26 _let_39 _let_37) (or _let_64 (= (ite (= (_ bv1 1) ((_ extract 0 0) _let_7)) ((_ sign_extend 0) ((_ rotate_right 2) (_ bv15 4))) ((_ sign_extend 0) ((_ rotate_right 2) (_ bv15 4)))) (ite (= (_ bv1 1) ((_ extract 3 3) (bvsub v1 (_ bv15 4)))) (bvshl (_ bv13 4) (_ bv12 4)) (_ bv13 4))) _let_34) (or (not (bvsgt (ite (bvsge ((_ sign_extend 3) _let_4) (bvneg _let_2)) (_ bv1 1) (_ bv0 1)) _let_18)) _let_35 _let_59) (or _let_41 (not _let_36) _let_60) (or _let_32 (not _let_30) _let_27) (or _let_51 (not _let_48) _let_55) (or _let_66 _let_55 (not (bvsgt (ite (bvslt v1 (_ bv13 4)) (_ bv1 1) (_ bv0 1)) (ite (bvslt v1 (_ bv13 4)) (_ bv1 1) (_ bv0 1))))) (or _let_29 _let_62 (not _let_43)) (or (not _let_52) _let_27 _let_42) (or (not (bvule _let_2 (bvshl v1 (_ bv13 4)))) _let_60 _let_40) (or _let_32 _let_67 _let_58) (or (not (bvsle _let_18 _let_8)) (not _let_47) (not (bvult ((_ sign_extend 3) (ite (bvsgt ((_ sign_extend 3) _let_4) (ite (= (_ bv1 1) ((_ extract 0 0) _let_7)) ((_ sign_extend 0) ((_ rotate_right 2) (_ bv15 4))) ((_ sign_extend 0) ((_ rotate_right 2) (_ bv15 4))))) (_ bv1 1) (_ bv0 1))) (bvneg _let_2)))) (or (bvule _let_1 ((_ zero_extend 3) _let_4)) _let_45 (bvule _let_1 ((_ zero_extend 3) _let_4))) (or _let_54 _let_68 (not _let_50)) (or _let_40 (bvult _let_12 _let_4) (bvsle _let_14 _let_22)) (or _let_69 (distinct (ite (= (_ bv1 1) ((_ extract 0 0) _let_7)) ((_ sign_extend 0) ((_ rotate_right 2) (_ bv15 4))) ((_ sign_extend 0) ((_ rotate_right 2) (_ bv15 4)))) ((_ repeat 4) (ite (bvslt v1 (_ bv13 4)) (_ bv1 1) (_ bv0 1)))) (bvult (bvshl (_ bv13 4) (_ bv12 4)) v0)) (or (bvsge ((_ rotate_right 2) (_ bv15 4)) _let_22) (bvult (bvneg (ite (bvslt v1 (_ bv13 4)) (_ bv1 1) (_ bv0 1))) _let_18) (bvult (bvsub v1 (_ bv15 4)) _let_24)) (or _let_69 _let_55 (not _let_26)) (or _let_46 _let_70 _let_71) (or _let_66 _let_21 (not (= _let_0 _let_15))) (or _let_30 _let_58 _let_50) (or _let_35 _let_63 _let_62) (or _let_39 _let_29 _let_68) (or _let_70 _let_65 (bvslt _let_5 _let_10)) (or _let_57 _let_34 (not (bvult _let_2 _let_20))) (or _let_67 (not (bvsle ((_ sign_extend 3) (ite (bvsge (bvshl v1 (_ bv13 4)) (ite (= (_ bv1 1) ((_ extract 0 0) _let_7)) ((_ sign_extend 0) ((_ rotate_right 2) (_ bv15 4))) ((_ sign_extend 0) ((_ rotate_right 2) (_ bv15 4))))) (_ bv1 1) (_ bv0 1))) ((_ zero_extend 0) _let_1))) _let_58) (or _let_49 _let_42 _let_36) (or _let_48 (not (bvsgt (bvshl v1 (_ bv13 4)) _let_24)) _let_46) (or _let_61 (not (bvult (bvshl (_ bv13 4) (_ bv12 4)) ((_ sign_extend 2) ((_ sign_extend 1) (ite (bvslt v1 (_ bv13 4)) (_ bv1 1) (_ bv0 1)))))) _let_64) (or _let_53 (not (bvsge _let_6 ((_ zero_extend 3) _let_8))) (not (bvsge ((_ zero_extend 3) _let_5) ((_ rotate_right 2) (_ bv15 4))))) (or _let_31 _let_47 _let_71)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) ))
