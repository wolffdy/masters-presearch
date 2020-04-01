(set-info :source |fuzzsmt|)
(set-info :smt-lib-version 2.0)
(set-info :category "random")
(set-info :status sat)
(set-logic QF_UFLIAFS)
(define-sort Element () Int)
(declare-fun f0 ( Int Int Int) Int)
(declare-fun f1 ( (Set Element)) (Set Element))
(declare-fun p0 ( Int Int Int) Bool)
(declare-fun p1 ( (Set Element)) Bool)
(declare-fun v0 () Int)
(declare-fun v1 () (Set Element))
(declare-fun v2 () (Set Element))
(declare-fun v3 () (Set Element))
(assert (let ((e4 1))
(let ((e5 (- v0)))
(let ((e6 (* v0 (- e4))))
(let ((e7 (ite (p0 v0 e5 v0) 1 0)))
(let ((e8 (- e6 e7)))
(let ((e9 (+ e5 v0)))
(let ((e10 (ite (p0 e7 e7 e5) 1 0)))
(let ((e11 (+ e8 e10)))
(let ((e12 (* (- e4) e7)))
(let ((e13 (- e10)))
(let ((e14 (f0 e5 e7 e6)))
(let ((e15 (member v0 v1)))
(let ((e16 (member e12 v2)))
(let ((e17 (member e14 v1)))
(let ((e18 (f1 v3)))
(let ((e19 (f1 v2)))
(let ((e20 (f1 v1)))
(let ((e21 (>= v0 e9)))
(let ((e22 (> e6 e6)))
(let ((e23 (> e5 e12)))
(let ((e24 (distinct e8 e11)))
(let ((e25 (= e10 e10)))
(let ((e26 (> e13 e13)))
(let ((e27 (distinct e14 e10)))
(let ((e28 (> e11 e5)))
(let ((e29 (>= e14 e6)))
(let ((e30 (< e14 e14)))
(let ((e31 (< e7 e12)))
(let ((e32 (<= e11 e12)))
(let ((e33 (< e14 e11)))
(let ((e34 (<= e7 e9)))
(let ((e35 (distinct e12 e5)))
(let ((e36 (= e14 e6)))
(let ((e37 (< v0 e8)))
(let ((e38 (< e13 e14)))
(let ((e39 (>= e6 e13)))
(let ((e40 (< e12 e13)))
(let ((e41 (< v0 e14)))
(let ((e42 (< v0 e11)))
(let ((e43 (p0 e13 e7 e8)))
(let ((e44 (ite e17 e19 e19)))
(let ((e45 (ite e34 v1 v1)))
(let ((e46 (ite e28 v1 e44)))
(let ((e47 (ite e24 e44 e20)))
(let ((e48 (ite e39 e18 v3)))
(let ((e49 (ite e35 v2 v3)))
(let ((e50 (ite e38 e18 e20)))
(let ((e51 (ite e22 v2 e44)))
(let ((e52 (ite e17 e20 e18)))
(let ((e53 (ite e35 e52 e19)))
(let ((e54 (ite e38 e49 e20)))
(let ((e55 (ite e15 e20 e45)))
(let ((e56 (ite e37 v1 v3)))
(let ((e57 (ite e41 e50 v1)))
(let ((e58 (ite e28 v1 e54)))
(let ((e59 (ite e27 e19 e53)))
(let ((e60 (ite e16 e46 e44)))
(let ((e61 (ite e29 e57 e52)))
(let ((e62 (ite e21 e50 e53)))
(let ((e63 (ite e32 e45 e19)))
(let ((e64 (ite e42 v3 e57)))
(let ((e65 (ite e33 e50 v3)))
(let ((e66 (ite e43 e49 e20)))
(let ((e67 (ite e22 v1 e63)))
(let ((e68 (ite e40 e45 e19)))
(let ((e69 (ite e30 e62 e58)))
(let ((e70 (ite e24 e52 e58)))
(let ((e71 (ite e31 e64 e67)))
(let ((e72 (ite e30 e18 e20)))
(let ((e73 (ite e25 e58 e44)))
(let ((e74 (ite e36 e63 v3)))
(let ((e75 (ite e43 e62 e73)))
(let ((e76 (ite e26 e61 e55)))
(let ((e77 (ite e23 e61 e71)))
(let ((e78 (ite e40 e13 v0)))
(let ((e79 (ite e23 e8 e13)))
(let ((e80 (ite e24 e78 e6)))
(let ((e81 (ite e39 e9 e80)))
(let ((e82 (ite e31 e7 v0)))
(let ((e83 (ite e43 e14 e6)))
(let ((e84 (ite e38 e80 e81)))
(let ((e85 (ite e32 e14 e10)))
(let ((e86 (ite e29 e84 e78)))
(let ((e87 (ite e27 e12 e8)))
(let ((e88 (ite e31 e11 e6)))
(let ((e89 (ite e33 e88 e85)))
(let ((e90 (ite e36 e12 v0)))
(let ((e91 (ite e23 e5 e7)))
(let ((e92 (ite e34 e89 e80)))
(let ((e93 (ite e15 e79 v0)))
(let ((e94 (ite e21 e6 e7)))
(let ((e95 (ite e26 v0 e91)))
(let ((e96 (ite e28 e94 e87)))
(let ((e97 (ite e32 e90 e78)))
(let ((e98 (ite e42 e78 e83)))
(let ((e99 (ite e40 e13 e82)))
(let ((e100 (ite e25 e88 e90)))
(let ((e101 (ite e26 e11 e81)))
(let ((e102 (ite e17 e101 e81)))
(let ((e103 (ite e30 v0 e80)))
(let ((e104 (ite e28 e80 e79)))
(let ((e105 (ite e27 e95 e101)))
(let ((e106 (ite e22 e92 e94)))
(let ((e107 (ite e16 e82 e94)))
(let ((e108 (ite e41 e10 e78)))
(let ((e109 (ite e37 e107 e84)))
(let ((e110 (ite e35 e89 e92)))
(let ((e111 (and e30 e37)))
(let ((e112 (=> e21 e41)))
(let ((e113 (ite e25 e33 e26)))
(let ((e114 (and e34 e38)))
(let ((e115 (=> e22 e43)))
(let ((e116 (and e24 e35)))
(let ((e117 (not e112)))
(let ((e118 (=> e27 e116)))
(let ((e119 (= e36 e15)))
(let ((e120 (= e42 e42)))
(let ((e121 (xor e29 e115)))
(let ((e122 (xor e39 e16)))
(let ((e123 (or e118 e32)))
(let ((e124 (not e28)))
(let ((e125 (=> e23 e40)))
(let ((e126 (ite e17 e123 e111)))
(let ((e127 (not e117)))
(let ((e128 (not e31)))
(let ((e129 (xor e121 e126)))
(let ((e130 (or e125 e119)))
(let ((e131 (=> e127 e114)))
(let ((e132 (or e113 e128)))
(let ((e133 (= e122 e124)))
(let ((e134 (not e130)))
(let ((e135 (or e133 e132)))
(let ((e136 (= e129 e135)))
(let ((e137 (=> e120 e120)))
(let ((e138 (or e134 e137)))
(let ((e139 (or e138 e138)))
(let ((e140 (and e139 e131)))
(let ((e141 (or e136 e136)))
(let ((e142 (= e140 e141)))
e142
))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))

(check-sat)
