{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.QaggycalZ45Zmain where

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
import qualified MAlonzo.Code.Qaggycal
import qualified MAlonzo.Code.QaggycalZ45Ztypes
import qualified MAlonzo.Code.Qbool
import qualified MAlonzo.Code.Qio
import qualified MAlonzo.Code.Qlist
import qualified MAlonzo.Code.Qparse
import qualified MAlonzo.Code.Qrun
import qualified MAlonzo.Code.Qstring
import qualified MAlonzo.Code.Qsum

name6 = "aggycal-main.parsem.pderiv.RE"
d6 a0 a1 = ()
name10 = "aggycal-main.parsem.pderiv.insert-back-id"
d10 v0 v1 v2 v3 = coe MAlonzo.Code.Qparse.du172 v2 v3
name12 = "aggycal-main.parsem.pderiv.insert-front-id"
d12 v0 v1 v2 v3 = coe MAlonzo.Code.Qparse.du164 v2 v3
name14 = "aggycal-main.parsem.pderiv.parse"
d14
  = coe MAlonzo.Code.Qparse.du190 MAlonzo.Code.QaggycalZ45Ztypes.d658
name16 = "aggycal-main.parsem.pderiv.parse-filter"
d16
  = coe MAlonzo.Code.Qparse.du204 MAlonzo.Code.QaggycalZ45Ztypes.d658
name18 = "aggycal-main.parsem.pderiv.re-to-run"
d18 v0 v1 v2 v3 = coe MAlonzo.Code.Qparse.du140 v2 v3
name20 = "aggycal-main.parsem.pderiv.rewrite-main"
d20 v0 v1 v2 v3 v4 = coe MAlonzo.Code.Qparse.du504 v0 v3 v4
name22 = "aggycal-main.parsem.pderiv.rewriteRun"
d22 v0 v1 v2 v3 = coe MAlonzo.Code.Qparse.du604 v0 v3
name26 = "aggycal-main.parsem.pderiv.runRtn"
d26
  = coe MAlonzo.Code.Qparse.du484 MAlonzo.Code.QaggycalZ45Ztypes.d658
name36 = "aggycal-main.parsem.pnoderiv.RE"
d36 a0 a1 = ()
name40 = "aggycal-main.parsem.pnoderiv.insert-back-id"
d40 v0 v1 v2 v3 = coe MAlonzo.Code.Qparse.du670 v2 v3
name42 = "aggycal-main.parsem.pnoderiv.insert-front-id"
d42 v0 v1 v2 v3 = coe MAlonzo.Code.Qparse.du662 v2 v3
name44 = "aggycal-main.parsem.pnoderiv.parse"
d44
  = coe MAlonzo.Code.Qparse.du688 MAlonzo.Code.QaggycalZ45Ztypes.d658
name46 = "aggycal-main.parsem.pnoderiv.parse-filter"
d46
  = coe MAlonzo.Code.Qparse.du702 MAlonzo.Code.QaggycalZ45Ztypes.d658
name48 = "aggycal-main.parsem.pnoderiv.re-to-run"
d48 v0 v1 v2 v3 = coe MAlonzo.Code.Qparse.du644 v2 v3
name50 = "aggycal-main.parsem.pnoderiv.rewrite-main"
d50 v0 v1 v2 v3 = coe MAlonzo.Code.Qparse.du998 v0 v2 v3
name52 = "aggycal-main.parsem.pnoderiv.rewriteRun"
d52 v0 v1 v2 = coe MAlonzo.Code.Qparse.du1096 v0 v2
name56 = "aggycal-main.parsem.pnoderiv.runRtn"
d56
  = coe MAlonzo.Code.Qparse.du982 MAlonzo.Code.QaggycalZ45Ztypes.d658
name82 = "aggycal-main._.rewriteRun"
d82 = coe MAlonzo.Code.Qparse.du1096 MAlonzo.Code.Qaggycal.d824
name86 = "aggycal-main._.runRtn"
d86
  = coe
      MAlonzo.Code.Qparse.du982 MAlonzo.Code.QaggycalZ45Ztypes.d658
      erased MAlonzo.Code.Qaggycal.d184
name154 = "aggycal-main._.noderiv.Run"
d154 = erased
name156 = "aggycal-main._.noderiv.Run-to-string"
d156
  = coe MAlonzo.Code.Qrun.d134 MAlonzo.Code.QaggycalZ45Ztypes.d658
name182 = "aggycal-main.process-strt"
d182 v0 = du182
du182 = coe Data.Text.pack ""
name186 = "aggycal-main.process"
d186 v0
  = let v1
          = coe
              MAlonzo.Code.Qstring.d12
              (coe Data.Text.pack "Parsing failure (run with -")
              (coe Data.Text.pack "-showParsed).\n") in
    case coe v0 of
      MAlonzo.Code.Qlist.C18 v2 v3
        -> case coe v2 of
             MAlonzo.Code.Qrun.C112 v4
               -> case coe v4 of
                    MAlonzo.Code.QaggycalZ45Ztypes.C138 v5
                      -> case coe v3 of
                           MAlonzo.Code.Qlist.C12 -> coe du182
                           _ -> coe v1
                    _ -> coe v1
             _ -> coe v1
      _ -> coe v1
name192 = "aggycal-main.putStrRunIf"
d192 v0 v1
  = case coe v0 of
      True
        -> coe
             MAlonzo.Code.Qio.du86
             (coe
                MAlonzo.Code.Qio.d14
                (coe
                   MAlonzo.Code.Qrun.d134 MAlonzo.Code.QaggycalZ45Ztypes.d658 v1))
             (coe MAlonzo.Code.Qio.d14 (coe Data.Text.pack "\n"))
      False -> coe MAlonzo.Code.Qio.d6 erased erased
      _ -> coe MAlonzo.RTE.mazUnreachableError
name202 = "aggycal-main.processArgs"
d202 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Qlist.C12
        -> coe
             MAlonzo.Code.Qio.d14
             (coe
                Data.Text.pack "Please run with the name of a file to process.\n")
      MAlonzo.Code.Qlist.C18 v3 v4
        -> let v5
                 = let v5
                         = coe
                             MAlonzo.Code.Qio.d14
                             (coe
                                MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "Unknown option ")
                                (coe MAlonzo.Code.Qstring.d12 v3 (coe Data.Text.pack "\n"))) in
                   case coe v3 of
                     _ | (==) v3 (Data.Text.pack "--showParsed") -> coe d202 v0 True v4
                     _ | (==) v3 (Data.Text.pack "--showRun") -> coe d202 True v1 v4
                     _ -> coe v5 in
           case coe v4 of
             MAlonzo.Code.Qlist.C12
               -> coe
                    MAlonzo.Code.Qio.d12 erased erased (coe MAlonzo.Code.Qio.d16 v3)
                    (coe du214 v0 v1)
             _ -> coe v5
      _ -> coe MAlonzo.RTE.mazUnreachableError
name214 = "aggycal-main._.processText"
d214 v0 v1 v2 v3 = du214 v0 v1 v3
du214 v0 v1 v2
  = let v3
          = coe
              MAlonzo.Code.Qparse.du982 MAlonzo.Code.QaggycalZ45Ztypes.d658
              erased MAlonzo.Code.Qaggycal.d184
              (coe MAlonzo.Code.Qstring.d14 v2) in
    case coe v3 of
      MAlonzo.Code.Qsum.C22 v4
        -> coe
             MAlonzo.Code.Qio.du86
             (coe
                MAlonzo.Code.Qio.du86
                (coe
                   MAlonzo.Code.Qio.d14
                   (coe Data.Text.pack "Characters left before failure : "))
                (coe MAlonzo.Code.Qio.d14 (coe MAlonzo.Code.Qstring.d16 v4)))
             (coe
                MAlonzo.Code.Qio.d14
                (coe Data.Text.pack "\nCannot proceed to parsing.\n"))
      MAlonzo.Code.Qsum.C26 v4
        -> let v5 = coe d192 v0 v4 in
           let v6
                 = coe MAlonzo.Code.Qparse.du1096 MAlonzo.Code.Qaggycal.d824 v4 in
           let v7 = coe d192 v1 v6 in
           coe
             MAlonzo.Code.Qio.du86 (coe MAlonzo.Code.Qio.du86 v5 v7)
             (coe MAlonzo.Code.Qio.d14 (coe d186 v6))
      _ -> coe MAlonzo.RTE.mazUnreachableError
main = d296
name296 = "aggycal-main.main"
d296
  = coe
      MAlonzo.Code.Qio.d12 erased erased MAlonzo.Code.Qio.d60
      (coe d202 False False)