; COMMAND-LINE: --nl-ext-tf-tplanes
; EXPECT: sat
(set-logic QF_NRAT)
(declare-fun time__AT0@0 () Real)
(declare-fun instance.y__AT0@0 () Real)
(declare-fun instance.x__AT0@0 () Real)
(declare-fun instance.y__AT0@2 () Real)
(declare-fun event_is_timed__AT0@2 () Bool)
(declare-fun instance.EVENT.0__AT0@1 () Bool)
(declare-fun instance.EVENT.1__AT0@1 () Bool)
(declare-fun event_is_timed__AT0@1 () Bool)
(declare-fun event_is_timed__AT0@0 () Bool)
(declare-fun instance.EVENT.0__AT0@0 () Bool)
(declare-fun instance.EVENT.1__AT0@0 () Bool)
(declare-fun instance.y__AT0@1 () Real)
(declare-fun instance.x__AT0@1 () Real)
(declare-fun time__AT0@1 () Real)
(declare-fun instance.x__AT0@2 () Real)
(declare-fun time__AT0@2 () Real)
(assert (let ((.def_0 (<= instance.y__AT0@2 2.0))) (let ((.def_1 (not .def_0))) (let ((.def_2 (not instance.EVENT.1__AT0@1))) (let ((.def_3 (not instance.EVENT.0__AT0@1))) (let ((.def_4 (or .def_3 .def_2))) (let ((.def_5 (= event_is_timed__AT0@1 instance.EVENT.1__AT0@1))) (let ((.def_6 (<= time__AT0@1 time__AT0@2))) (let ((.def_7 (or .def_2 .def_6))) (let ((.def_8 (and .def_7 .def_5))) (let ((.def_9 (= time__AT0@1 time__AT0@2))) (let ((.def_10 (or instance.EVENT.1__AT0@1 .def_9))) (let ((.def_11 (and .def_10 .def_8))) (let ((.def_12 (* (- 1.0) time__AT0@1))) (let ((.def_13 (+ .def_12 time__AT0@2))) (let ((.def_14 (exp .def_13))) (let ((.def_15 (* instance.y__AT0@1 .def_14))) (let ((.def_16 (= instance.y__AT0@2 .def_15))) (let ((.def_17 (* 970143.0 instance.x__AT0@2))) (let ((.def_18 (* (- 970143.0) instance.x__AT0@1))) (let ((.def_19 (+ .def_18 .def_17))) (let ((.def_20 (* (- 242536.0) instance.y__AT0@1))) (let ((.def_21 (+ .def_20 .def_19))) (let ((.def_22 (* 242536.0 instance.y__AT0@2))) (let ((.def_23 (+ .def_22 .def_21))) (let ((.def_24 (= .def_23 0.0))) (let ((.def_25 (and .def_24 .def_16))) (let ((.def_26 (not .def_9))) (let ((.def_27 (= instance.x__AT0@1 instance.x__AT0@2))) (let ((.def_28 (= instance.y__AT0@2 instance.y__AT0@1))) (let ((.def_29 (and .def_28 .def_27))) (let ((.def_30 (or .def_29 .def_26))) (let ((.def_31 (and .def_30 .def_25))) (let ((.def_32 (and .def_31 .def_6))) (let ((.def_33 (or .def_2 .def_32))) (let ((.def_34 (and .def_33 .def_10))) (let ((.def_35 (and .def_3 .def_2))) (let ((.def_36 (or .def_35 .def_34))) (let ((.def_37 (and .def_36 .def_11))) (let ((.def_38 (not .def_35))) (let ((.def_39 (or .def_38 .def_29))) (let ((.def_40 (and .def_39 .def_37))) (let ((.def_41 (not event_is_timed__AT0@1))) (let ((.def_42 (= event_is_timed__AT0@2 .def_41))) (let ((.def_43 (and .def_42 .def_40))) (let ((.def_44 (and .def_43 .def_4))) (let ((.def_45 (not instance.EVENT.1__AT0@0))) (let ((.def_46 (not instance.EVENT.0__AT0@0))) (let ((.def_47 (or .def_46 .def_45))) (let ((.def_48 (= event_is_timed__AT0@0 instance.EVENT.1__AT0@0))) (let ((.def_49 (<= time__AT0@0 time__AT0@1))) (let ((.def_50 (or .def_45 .def_49))) (let ((.def_51 (and .def_50 .def_48))) (let ((.def_52 (= time__AT0@0 time__AT0@1))) (let ((.def_53 (or instance.EVENT.1__AT0@0 .def_52))) (let ((.def_54 (and .def_53 .def_51))) (let ((.def_55 (* (- 1.0) time__AT0@0))) (let ((.def_56 (+ .def_55 time__AT0@1))) (let ((.def_57 (exp .def_56))) (let ((.def_58 (* instance.y__AT0@0 .def_57))) (let ((.def_59 (= instance.y__AT0@1 .def_58))) (let ((.def_60 (+ .def_20 .def_18))) (let ((.def_61 (* 970143.0 instance.x__AT0@0))) (let ((.def_62 (+ .def_61 .def_60))) (let ((.def_63 (* 242536.0 instance.y__AT0@0))) (let ((.def_64 (+ .def_63 .def_62))) (let ((.def_65 (= .def_64 0.0))) (let ((.def_66 (and .def_65 .def_59))) (let ((.def_67 (not .def_52))) (let ((.def_68 (= instance.x__AT0@0 instance.x__AT0@1))) (let ((.def_69 (= instance.y__AT0@0 instance.y__AT0@1))) (let ((.def_70 (and .def_69 .def_68))) (let ((.def_71 (or .def_70 .def_67))) (let ((.def_72 (and .def_71 .def_66))) (let ((.def_73 (and .def_72 .def_49))) (let ((.def_74 (or .def_45 .def_73))) (let ((.def_75 (and .def_74 .def_53))) (let ((.def_76 (and .def_46 .def_45))) (let ((.def_77 (or .def_76 .def_75))) (let ((.def_78 (and .def_77 .def_54))) (let ((.def_79 (not .def_76))) (let ((.def_80 (or .def_79 .def_70))) (let ((.def_81 (and .def_80 .def_78))) (let ((.def_82 (not event_is_timed__AT0@0))) (let ((.def_83 (= event_is_timed__AT0@1 .def_82))) (let ((.def_84 (and .def_83 .def_81))) (let ((.def_85 (and .def_84 .def_47))) (let ((.def_86 (<= instance.x__AT0@0 (- (/ 1 2))))) (let ((.def_87 (not .def_86))) (let ((.def_88 (<= 0.0 instance.x__AT0@0))) (let ((.def_89 (not .def_88))) (let ((.def_90 (and .def_89 .def_87))) (let ((.def_91 (<= 0.0 instance.y__AT0@0))) (let ((.def_92 (not .def_91))) (let ((.def_93 (<= (- (/ 1 2)) instance.y__AT0@0))) (let ((.def_94 (and .def_93 .def_92))) (let ((.def_95 (and .def_94 .def_90))) (let ((.def_96 (= time__AT0@0 0.0))) (let ((.def_97 (and .def_96 .def_95))) (let ((.def_98 (and .def_97 .def_85 .def_44 .def_1))) .def_98))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(check-sat)
(exit)
