{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.QnatZ45Zthms where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.DeepSeq
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Directory
import qualified System.Environment
import qualified System.FilePath
import qualified System.IO
import qualified Data.Text
import qualified MAlonzo.Code.Qbool
import qualified MAlonzo.Code.QboolZ45Zthms
import qualified MAlonzo.Code.QboolZ45Zthms2
import qualified MAlonzo.Code.Qnat
import qualified MAlonzo.Code.Qproduct
import qualified MAlonzo.Code.QproductZ45Zthms
import qualified MAlonzo.Code.Qsum

name4 = "nat-thms.0+"
d4 = erased
name10 = "nat-thms.+0"
d10 = erased
name20 = "nat-thms.+1"
d20 = erased
name32 = "nat-thms.+suc"
d32 = erased
name50 = "nat-thms.+assoc"
d50 = erased
name70 = "nat-thms.+comm"
d70 = erased
name96 = "nat-thms.+perm"
d96 = erased
name122 = "nat-thms.+perm2"
d122 = erased
name146 = "nat-thms.+\8801\&0"
d146 v0 v1 v2 = du146
du146 = coe MAlonzo.Code.Qproduct.C24 erased erased
name160 = "nat-thms.*0"
d160 = erased
name170 = "nat-thms.*1"
d170 = erased
name182 = "nat-thms.*suc"
d182 = erased
name212 = "nat-thms.*distribr"
d212 = erased
name234 = "nat-thms.*distribl"
d234 = erased
name274 = "nat-thms.*comm"
d274 = erased
name300 = "nat-thms.*assoc"
d300 = erased
name322 = "nat-thms.sucpred"
d322 = erased
name332 = "nat-thms.pred+"
d332 = erased
name344 = "nat-thms.<-0"
d344 = erased
name350 = "nat-thms.0-\8804"
d350 = erased
name358 = "nat-thms.<-drop"
d358 v0 v1 v2 = du358 v0 v1
du358 v0 v1
  = case coe v0 of
      0 -> case coe v1 of
             0 -> coe MAlonzo.Code.Qsum.C22 erased
             _ -> coe MAlonzo.Code.Qsum.C26 erased
      _ -> let v2 = coe subInt v0 (1 :: Integer) in
           case coe v1 of
             0 -> coe MAlonzo.Code.QboolZ45Zthms.d106 erased () erased
             _ -> let v3 = coe subInt v1 (1 :: Integer) in coe du358 v2 v3
name406 = "nat-thms.=\8469-refl"
d406 = erased
name414 = "nat-thms.=\8469-to-\8801"
d414 = erased
name436 = "nat-thms.=\8469-from-\8801"
d436 = erased
name444 = "nat-thms.=\8469-sym"
d444 = erased
name460 = "nat-thms.=\8469-suc"
d460 = erased
name466 = "nat-thms.<-suc"
d466 = erased
name476 = "nat-thms.<-suc2"
d476 = erased
name482 = "nat-thms.\8804-suc"
d482 = erased
name492 = "nat-thms.\8804-suc2"
d492 = erased
name510 = "nat-thms.<-push"
d510 v0 v1 v2 = du510 v0 v1
du510 v0 v1
  = let v2 = coe subInt v1 (1 :: Integer) in
    case coe v0 of
      0 -> coe MAlonzo.Code.Qproduct.C24 v2 erased
      _ -> let v3 = coe subInt v0 (1 :: Integer) in
           let v4 = coe du510 v3 v2 in
           case coe v4 of
             MAlonzo.Code.Qproduct.C24 v5 v6
               -> coe
                    MAlonzo.Code.Qproduct.C24 (coe addInt (1 :: Integer) v5) erased
             _ -> coe MAlonzo.RTE.mazUnreachableError
name546 = "nat-thms.suc-inj"
d546 = erased
name564 = "nat-thms.<-implies-suc"
d564 v0 v1 v2 = du564 v1
du564 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.QboolZ45Zthms.d106 erased () erased
      _ -> let v1 = coe subInt v0 (1 :: Integer) in
           coe MAlonzo.Code.Qproduct.C24 v1 erased
name580 = "nat-thms.<=\8469ff"
d580 = erased
name588 = "nat-thms.nonzero<"
d588 = erased
name598 = "nat-thms.iszerosum"
d598 = erased
name610 = "nat-thms.iszerosum2"
d610 = erased
name622 = "nat-thms.iszeromult"
d622 = erased
name646 = "nat-thms.<\8804"
d646 = erased
name662 = "nat-thms.\8804+1"
d662 = erased
name688 = "nat-thms.\8804+2"
d688 = erased
name706 = "nat-thms.\247<"
d706 = erased
name770 = "nat-thms.<-irrefl"
d770 = erased
name778 = "nat-thms.<-asym"
d778 = erased
name796 = "nat-thms.\8469-trichotomy\120121"
d796 = erased
name810 = "nat-thms.\8469-trichotomy"
d810 v0 v1
  = let v2
          = coe
              MAlonzo.Code.QboolZ45Zthms.du112 (coe MAlonzo.Code.Qnat.d44 v0 v1)
              (coe
                 MAlonzo.Code.Qbool.d18 (coe MAlonzo.Code.Qnat.d54 v0 v1)
                 (coe MAlonzo.Code.Qnat.d44 v1 v0)) in
    case coe v2 of
      MAlonzo.Code.Qsum.C22 v3 -> coe v2
      MAlonzo.Code.Qsum.C26 v3
        -> let v4
                 = coe
                     MAlonzo.Code.QboolZ45Zthms.du112 (coe MAlonzo.Code.Qnat.d54 v0 v1)
                     (coe MAlonzo.Code.Qnat.d44 v1 v0) in
           case coe v4 of
             MAlonzo.Code.Qsum.C22 v5 -> coe MAlonzo.Code.Qsum.C26 v4
             MAlonzo.Code.Qsum.C26 v5 -> coe MAlonzo.Code.Qsum.C26 v4
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name858 = "nat-thms.<-insert"
d858 v0 v1 v2 v3
  = let v4 = coe d810 v0 v1 in
    case coe v4 of
      MAlonzo.Code.Qsum.C22 v5 -> coe v4
      MAlonzo.Code.Qsum.C26 v5
        -> case coe v5 of
             MAlonzo.Code.Qsum.C22 v6
               -> coe MAlonzo.Code.Qsum.C26 (coe MAlonzo.Code.Qsum.C22 v3)
             MAlonzo.Code.Qsum.C26 v6
               -> let v7 = coe d810 v0 v2 in
                  case coe v7 of
                    MAlonzo.Code.Qsum.C22 v8
                      -> coe MAlonzo.Code.Qsum.C26 (coe MAlonzo.Code.Qsum.C22 erased)
                    MAlonzo.Code.Qsum.C26 v8
                      -> case coe v8 of
                           MAlonzo.Code.Qsum.C22 v9
                             -> coe MAlonzo.Code.Qsum.C26 (coe MAlonzo.Code.Qsum.C22 erased)
                           MAlonzo.Code.Qsum.C26 v9 -> coe v7
                           _ -> coe MAlonzo.RTE.mazUnreachableError
                    _ -> coe MAlonzo.RTE.mazUnreachableError
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name976 = "nat-thms.<-insert2"
d976 v0 v1 v2 v3 = du976 v0 v1 v2
du976 v0 v1 v2
  = let v3 = coe d858 v0 v1 v2 erased in
    case coe v3 of
      MAlonzo.Code.Qsum.C22 v4 -> coe v3
      MAlonzo.Code.Qsum.C26 v4
        -> case coe v4 of
             MAlonzo.Code.Qsum.C22 v5
               -> let v6
                        = coe
                            MAlonzo.Code.QboolZ45Zthms2.du136 (coe MAlonzo.Code.Qnat.d60 v1 v0)
                            (coe MAlonzo.Code.Qnat.d60 v0 v2) in
                  case coe v6 of
                    MAlonzo.Code.Qproduct.C24 v7 v8
                      -> coe MAlonzo.Code.Qsum.C26 (coe MAlonzo.Code.Qsum.C22 v6)
                    _ -> coe MAlonzo.RTE.mazUnreachableError
             MAlonzo.Code.Qsum.C26 v5 -> coe v3
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1044 = "nat-thms.<-trans"
d1044 = erased
name1090 = "nat-thms.<\8804-trans"
d1090 = erased
name1140 = "nat-thms.\8804<-trans"
d1140 = erased
name1186 = "nat-thms.\8804-refl"
d1186 = erased
name1196 = "nat-thms.\8804-trans"
d1196 = erased
name1308 = "nat-thms.\8804-total"
d1308 = erased
name1328 = "nat-thms.suc\8804"
d1328 = erased
name1340 = "nat-thms.suc\8804<"
d1340 = erased
name1350 = "nat-thms.suc<<"
d1350 = erased
name1360 = "nat-thms.<-suc-trans"
d1360 = erased
name1376 = "nat-thms.\8804-suc-trans"
d1376 = erased
name1392 = "nat-thms.<+"
d1392 = erased
name1408 = "nat-thms.<+2"
d1408 = erased
name1420 = "nat-thms.<-iter-suc-trans-t-h"
d1420 = erased
name1436 = "nat-thms.<-iter-suc-trans-t"
d1436 = erased
name1448 = "nat-thms.<-iter-suc-trans-h"
d1448 = erased
name1468 = "nat-thms.<-iter-suc-trans"
d1468 = erased
name1476 = "nat-thms.\8804\&0"
d1476 = erased
name1482 = "nat-thms.\8804\&2*"
d1482 = erased
name1498 = "nat-thms.0<+"
d1498 = erased
name1512 = "nat-thms.<=\8469ff2"
d1512 = erased
name1522 = "nat-thms.*\8804"
d1522 = erased
name1534 = "nat-thms.\8804ff"
d1534 = erased
name1554 = "nat-thms.<ff"
d1554 = erased
name1614 = "nat-thms.<-not-=\8469"
d1614 = erased
name1632 = "nat-thms.<-not->"
d1632 = erased
name1650 = "nat-thms.<tt"
d1650 = erased
name1670 = "nat-thms.\8804-antisym"
d1670 = erased
name1728 = "nat-thms.<+mono1"
d1728 = erased
name1742 = "nat-thms.<+mono2"
d1742 = erased
name1766 = "nat-thms.0\8760"
d1766 = erased
name1774 = "nat-thms.\8760\8804"
d1774 = erased
name1820 = "nat-thms.\8760<"
d1820 = erased
name1852 = "nat-thms.\8760<1"
d1852 = erased
name1866 = "nat-thms.+\8760\&1"
d1866 = erased
name1888 = "nat-thms.\8760+"
d1888 = erased
name1908 = "nat-thms.\8760+2"
d1908 = erased
name1938 = "nat-thms.\8760eq-swap"
d1938 = erased
name1954 = "nat-thms._.lem"
d1954 = erased
name1968 = "nat-thms.<\8760"
d1968 = erased
name2004 = "nat-thms.<\8760suc"
d2004 v0 v1 v2 = du2004 v0 v1
du2004 v0 v1
  = let v2
          = coe
              MAlonzo.Code.QproductZ45Zthms.du10
              (coe MAlonzo.Code.Qnat.d30 v0 v1) in
    case coe v2 of
      MAlonzo.Code.Qproduct.C24 v3 v4
        -> case coe v3 of
             0 -> coe erased
             _ -> let v5 = coe subInt v3 (1 :: Integer) in
                  coe MAlonzo.Code.Qproduct.C24 v5 v4
      _ -> coe MAlonzo.RTE.mazUnreachableError
name2072 = "nat-thms.\8760suc"
d2072 = erased
name2092 = "nat-thms.\8760suc2"
d2092 = erased
name2112 = "nat-thms.\8760cancel"
d2112 = erased
name2130 = "nat-thms.distribr*\8760"
d2130 = erased
name2168 = "nat-thms.\8760\8804\&2"
d2168 = erased
name2242 = "nat-thms.min-forced1"
d2242 = erased
name2286 = "nat-thms.min-suc"
d2286 = erased
name2300 = "nat-thms.max-suc"
d2300 = erased
name2316 = "nat-thms.min-mono1"
d2316 = erased
name2528 = "nat-thms.min-comm"
d2528 = erased
name2582 = "nat-thms.min-mono2"
d2582 = erased
name2602 = "nat-thms.min-same"
d2602 = erased
name2614 = "nat-thms.min-<1"
d2614 = erased
name2632 = "nat-thms.min-<2"
d2632 = erased
name2650 = "nat-thms.max-<1"
d2650 = erased
name2676 = "nat-thms.max-<2"
d2676 = erased
name2702 = "nat-thms.+\8802"
d2702 = erased
name2740 = "nat-thms.parity-even"
d2740 = erased
name2750 = "nat-thms.parity-even2"
d2750 = erased
name2760 = "nat-thms.parity-odd"
d2760 = erased
name2772 = "nat-thms.parity-add"
d2772 = erased
name2796 = "nat-thms.parity-mult"
d2796 = erased
name2814 = "nat-thms.1-pow"
d2814 = erased
name2826 = "nat-thms.nonzero-pow"
d2826 = erased
name2848 = "nat-thms.pow+"
d2848 = erased
name2878 = "nat-thms.pow*"
d2878 = erased
name2912 = "nat-thms.factorial-nonzero"
d2912 = erased
name2930 = "nat-thms.+inj1"
d2930 = erased
name2952 = "nat-thms.+inj2"
d2952 = erased
name2972 = "nat-thms.even~odd"
d2972 = erased
name2976 = "nat-thms.odd~even"
d2976 = erased