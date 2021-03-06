(set-option :produce-models true)
(set-logic BV)
(declare-fun y () (_ BitVec 4))
(declare-fun z () (_ BitVec 4))
(assert
 (exists ((x (_ BitVec 4))) (and 
 (or (bvult x (bvadd (bvmul y #b0101) #b0111)) (= x (bvadd (bvmul y #b0101) #b0111))) 
 (or (bvult (bvmul (bvadd y z) #b1000) x) (= (bvmul (bvadd y z) #b1000) x)))))
