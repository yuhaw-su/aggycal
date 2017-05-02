{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.QaggycalZ45Zcreate where

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
import qualified MAlonzo.Code.QadditZ45ZevtZ45Zinfo
import qualified MAlonzo.Code.Qaggycal
import qualified MAlonzo.Code.QaggycalZ45Ztypes
import qualified MAlonzo.Code.Qbool
import qualified MAlonzo.Code.QevtZ45Zinfo
import qualified MAlonzo.Code.Qio
import qualified MAlonzo.Code.Qlist
import qualified MAlonzo.Code.QnatZ45ZtoZ45Zstring
import qualified MAlonzo.Code.Qparse
import qualified MAlonzo.Code.Qproduct
import qualified MAlonzo.Code.Qrun
import qualified MAlonzo.Code.Qstring
import qualified MAlonzo.Code.Qsum

name6 = "aggycal-create.parsem.pderiv.RE"
d6 a0 a1 = ()
name10 = "aggycal-create.parsem.pderiv.insert-back-id"
d10 v0 v1 v2 v3 = coe MAlonzo.Code.Qparse.du172 v2 v3
name12 = "aggycal-create.parsem.pderiv.insert-front-id"
d12 v0 v1 v2 v3 = coe MAlonzo.Code.Qparse.du164 v2 v3
name14 = "aggycal-create.parsem.pderiv.parse"
d14
  = coe MAlonzo.Code.Qparse.du190 MAlonzo.Code.QaggycalZ45Ztypes.d610
name16 = "aggycal-create.parsem.pderiv.parse-filter"
d16
  = coe MAlonzo.Code.Qparse.du204 MAlonzo.Code.QaggycalZ45Ztypes.d610
name18 = "aggycal-create.parsem.pderiv.re-to-run"
d18 v0 v1 v2 v3 = coe MAlonzo.Code.Qparse.du140 v2 v3
name20 = "aggycal-create.parsem.pderiv.rewrite-main"
d20 v0 v1 v2 v3 v4 = coe MAlonzo.Code.Qparse.du504 v0 v3 v4
name22 = "aggycal-create.parsem.pderiv.rewriteRun"
d22 v0 v1 v2 v3 = coe MAlonzo.Code.Qparse.du604 v0 v3
name26 = "aggycal-create.parsem.pderiv.runRtn"
d26
  = coe MAlonzo.Code.Qparse.du484 MAlonzo.Code.QaggycalZ45Ztypes.d610
name36 = "aggycal-create.parsem.pnoderiv.RE"
d36 a0 a1 = ()
name40 = "aggycal-create.parsem.pnoderiv.insert-back-id"
d40 v0 v1 v2 v3 = coe MAlonzo.Code.Qparse.du670 v2 v3
name42 = "aggycal-create.parsem.pnoderiv.insert-front-id"
d42 v0 v1 v2 v3 = coe MAlonzo.Code.Qparse.du662 v2 v3
name44 = "aggycal-create.parsem.pnoderiv.parse"
d44
  = coe MAlonzo.Code.Qparse.du688 MAlonzo.Code.QaggycalZ45Ztypes.d610
name46 = "aggycal-create.parsem.pnoderiv.parse-filter"
d46
  = coe MAlonzo.Code.Qparse.du702 MAlonzo.Code.QaggycalZ45Ztypes.d610
name48 = "aggycal-create.parsem.pnoderiv.re-to-run"
d48 v0 v1 v2 v3 = coe MAlonzo.Code.Qparse.du644 v2 v3
name50 = "aggycal-create.parsem.pnoderiv.rewrite-main"
d50 v0 v1 v2 v3 = coe MAlonzo.Code.Qparse.du998 v0 v2 v3
name52 = "aggycal-create.parsem.pnoderiv.rewriteRun"
d52 v0 v1 v2 = coe MAlonzo.Code.Qparse.du1096 v0 v2
name56 = "aggycal-create.parsem.pnoderiv.runRtn"
d56
  = coe MAlonzo.Code.Qparse.du982 MAlonzo.Code.QaggycalZ45Ztypes.d610
name82 = "aggycal-create._.rewriteRun"
d82 = coe MAlonzo.Code.Qparse.du1096 MAlonzo.Code.Qaggycal.d758
name86 = "aggycal-create._.runRtn"
d86
  = coe
      MAlonzo.Code.Qparse.du982 MAlonzo.Code.QaggycalZ45Ztypes.d610
      erased MAlonzo.Code.Qaggycal.d156
name154 = "aggycal-create._.noderiv.Run"
d154 = erased
name156 = "aggycal-create._.noderiv.Run-to-string"
d156
  = coe MAlonzo.Code.Qrun.d134 MAlonzo.Code.QaggycalZ45Ztypes.d610
name182 = "aggycal-create.extract-addit-evt-info"
d182 v0
  = case coe v0 of
      MAlonzo.Code.QaggycalZ45Ztypes.C96 v1 v2
        -> coe
             MAlonzo.Code.Qlist.C18
             (coe MAlonzo.Code.QadditZ45ZevtZ45Zinfo.C10 v1) (coe d182 v2)
      MAlonzo.Code.QaggycalZ45Ztypes.C98 -> coe MAlonzo.Code.Qlist.C12
      _ -> coe MAlonzo.RTE.mazUnreachableError
name188 = "aggycal-create.adjust-time-with-ampm"
d188 v0
  = case coe v0 of
      MAlonzo.Code.QaggycalZ45Ztypes.C102 v1 v2
        -> coe MAlonzo.Code.Qproduct.C24 v1 v2
      MAlonzo.Code.QaggycalZ45Ztypes.C104 v1 v2 v3
        -> case coe v3 of
             MAlonzo.Code.QaggycalZ45Ztypes.C110
               -> coe MAlonzo.Code.Qproduct.C24 v1 v2
             MAlonzo.Code.QaggycalZ45Ztypes.C112
               -> coe
                    MAlonzo.Code.Qproduct.C24
                    (coe
                       MAlonzo.Code.QnatZ45ZtoZ45Zstring.d80
                       (coe
                          addInt (12 :: Integer)
                          (coe MAlonzo.Code.QnatZ45ZtoZ45Zstring.d118 v1)))
                    v2
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name216 = "aggycal-create.extract-datetimes"
d216 v0 v1
  = case coe v0 of
      MAlonzo.Code.QaggycalZ45Ztypes.C84 v2 v3 v4
        -> case coe v1 of
             MAlonzo.Code.QaggycalZ45Ztypes.C106
               -> coe
                    MAlonzo.Code.Qproduct.C24
                    (coe
                       MAlonzo.Code.Qproduct.C24
                       (coe
                          MAlonzo.Code.Qproduct.C24 v4 (coe MAlonzo.Code.Qproduct.C24 v2 v3))
                       MAlonzo.Code.QadditZ45ZevtZ45Zinfo.d12)
                    (coe
                       MAlonzo.Code.Qproduct.C24
                       (coe
                          MAlonzo.Code.Qproduct.C24 v4 (coe MAlonzo.Code.Qproduct.C24 v2 v3))
                       MAlonzo.Code.QadditZ45ZevtZ45Zinfo.d12)
             MAlonzo.Code.QaggycalZ45Ztypes.C108 v5 v6
               -> coe
                    MAlonzo.Code.Qproduct.C24
                    (coe
                       MAlonzo.Code.Qproduct.C24
                       (coe
                          MAlonzo.Code.Qproduct.C24 v4 (coe MAlonzo.Code.Qproduct.C24 v2 v3))
                       (coe d188 v5))
                    (coe
                       MAlonzo.Code.Qproduct.C24
                       (coe
                          MAlonzo.Code.Qproduct.C24 v4 (coe MAlonzo.Code.Qproduct.C24 v2 v3))
                       (coe d188 v6))
             _ -> coe MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.QaggycalZ45Ztypes.C86 v2 v3 v4 v5 v6 v7
        -> case coe v1 of
             MAlonzo.Code.QaggycalZ45Ztypes.C106
               -> coe
                    MAlonzo.Code.Qproduct.C24
                    (coe
                       MAlonzo.Code.Qproduct.C24
                       (coe
                          MAlonzo.Code.Qproduct.C24 v4 (coe MAlonzo.Code.Qproduct.C24 v2 v3))
                       MAlonzo.Code.QadditZ45ZevtZ45Zinfo.d12)
                    (coe
                       MAlonzo.Code.Qproduct.C24
                       (coe
                          MAlonzo.Code.Qproduct.C24 v7 (coe MAlonzo.Code.Qproduct.C24 v5 v6))
                       MAlonzo.Code.QadditZ45ZevtZ45Zinfo.d12)
             MAlonzo.Code.QaggycalZ45Ztypes.C108 v8 v9
               -> coe
                    MAlonzo.Code.Qproduct.C24
                    (coe
                       MAlonzo.Code.Qproduct.C24
                       (coe
                          MAlonzo.Code.Qproduct.C24 v4 (coe MAlonzo.Code.Qproduct.C24 v2 v3))
                       (coe d188 v8))
                    (coe
                       MAlonzo.Code.Qproduct.C24
                       (coe
                          MAlonzo.Code.Qproduct.C24 v7 (coe MAlonzo.Code.Qproduct.C24 v5 v6))
                       (coe d188 v9))
             _ -> coe MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.QaggycalZ45Ztypes.C88 v2 v3 v4
        -> case coe v1 of
             MAlonzo.Code.QaggycalZ45Ztypes.C106
               -> coe
                    MAlonzo.Code.Qproduct.C24
                    (coe
                       MAlonzo.Code.Qproduct.C24
                       (coe
                          MAlonzo.Code.Qproduct.C24 v2 (coe MAlonzo.Code.Qproduct.C24 v3 v4))
                       MAlonzo.Code.QadditZ45ZevtZ45Zinfo.d12)
                    (coe
                       MAlonzo.Code.Qproduct.C24
                       (coe
                          MAlonzo.Code.Qproduct.C24 v2 (coe MAlonzo.Code.Qproduct.C24 v3 v4))
                       MAlonzo.Code.QadditZ45ZevtZ45Zinfo.d12)
             MAlonzo.Code.QaggycalZ45Ztypes.C108 v5 v6
               -> coe
                    MAlonzo.Code.Qproduct.C24
                    (coe
                       MAlonzo.Code.Qproduct.C24
                       (coe
                          MAlonzo.Code.Qproduct.C24 v2 (coe MAlonzo.Code.Qproduct.C24 v3 v4))
                       (coe d188 v5))
                    (coe
                       MAlonzo.Code.Qproduct.C24
                       (coe
                          MAlonzo.Code.Qproduct.C24 v2 (coe MAlonzo.Code.Qproduct.C24 v3 v4))
                       (coe d188 v6))
             _ -> coe MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.QaggycalZ45Ztypes.C90 v2 v3 v4 v5 v6 v7
        -> case coe v1 of
             MAlonzo.Code.QaggycalZ45Ztypes.C106
               -> coe
                    MAlonzo.Code.Qproduct.C24
                    (coe
                       MAlonzo.Code.Qproduct.C24
                       (coe
                          MAlonzo.Code.Qproduct.C24 v2 (coe MAlonzo.Code.Qproduct.C24 v3 v4))
                       MAlonzo.Code.QadditZ45ZevtZ45Zinfo.d12)
                    (coe
                       MAlonzo.Code.Qproduct.C24
                       (coe
                          MAlonzo.Code.Qproduct.C24 v5 (coe MAlonzo.Code.Qproduct.C24 v6 v7))
                       MAlonzo.Code.QadditZ45ZevtZ45Zinfo.d12)
             MAlonzo.Code.QaggycalZ45Ztypes.C108 v8 v9
               -> coe
                    MAlonzo.Code.Qproduct.C24
                    (coe
                       MAlonzo.Code.Qproduct.C24
                       (coe
                          MAlonzo.Code.Qproduct.C24 v2 (coe MAlonzo.Code.Qproduct.C24 v3 v4))
                       (coe d188 v8))
                    (coe
                       MAlonzo.Code.Qproduct.C24
                       (coe
                          MAlonzo.Code.Qproduct.C24 v5 (coe MAlonzo.Code.Qproduct.C24 v6 v7))
                       (coe d188 v9))
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name414 = "aggycal-create.event-to-\120131evt-info"
d414 v0
  = case coe v0 of
      MAlonzo.Code.QaggycalZ45Ztypes.C92 v1 v2 v3 v4 v5
        -> let v6 = coe d216 v2 v3 in
           case coe v6 of
             MAlonzo.Code.Qproduct.C24 v7 v8
               -> coe
                    MAlonzo.Code.Qlist.C18
                    (coe MAlonzo.Code.QevtZ45Zinfo.C4 v1 v7 v8 (coe d182 v4))
                    (coe d414 v5)
             _ -> coe MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.QaggycalZ45Ztypes.C94 v1 v2 v3 v4
        -> let v5 = coe d216 v2 v3 in
           case coe v5 of
             MAlonzo.Code.Qproduct.C24 v6 v7
               -> coe
                    MAlonzo.Code.Qlist.C18
                    (coe MAlonzo.Code.QevtZ45Zinfo.C4 v1 v6 v7 (coe d182 v4))
                    MAlonzo.Code.Qlist.C12
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name468 = "aggycal-create.process-strt"
d468 v0
  = case coe v0 of
      MAlonzo.Code.QaggycalZ45Ztypes.C100 v1
        -> coe
             MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "BEGIN:VCALENDAR\n")
             (coe
                MAlonzo.Code.Qstring.d12
                (coe Data.Text.pack "PRODID:aggycal woot\n")
                (coe
                   MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "VERSION:2.0\n")
                   (coe
                      MAlonzo.Code.Qstring.d12
                      (coe Data.Text.pack "CALSCALE:GREGORIAN\n")
                      (coe
                         MAlonzo.Code.Qstring.d12
                         (coe MAlonzo.Code.QevtZ45Zinfo.d50 (coe d414 v1))
                         (coe Data.Text.pack "END:VCALENDAR\n")))))
      _ -> coe MAlonzo.RTE.mazUnreachableError
name472 = "aggycal-create.process"
d472 v0
  = let v1
          = coe
              MAlonzo.Code.Qio.d14
              (coe
                 MAlonzo.Code.Qstring.d12
                 (coe Data.Text.pack "Parsing failure (run with -")
                 (coe Data.Text.pack "-showParsed).\n")) in
    case coe v0 of
      MAlonzo.Code.Qlist.C18 v2 v3
        -> case coe v2 of
             MAlonzo.Code.Qrun.C112 v4
               -> case coe v4 of
                    MAlonzo.Code.QaggycalZ45Ztypes.C122 v5
                      -> case coe v3 of
                           MAlonzo.Code.Qlist.C12
                             -> coe
                                  MAlonzo.Code.Qio.d18
                                  (coe
                                     MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "testing")
                                     (coe Data.Text.pack ".ics"))
                                  (coe d468 v5)
                           _ -> coe v1
                    _ -> coe v1
             _ -> coe v1
      _ -> coe v1
name478 = "aggycal-create.putStrRunIf"
d478 v0 v1
  = case coe v0 of
      True
        -> coe
             MAlonzo.Code.Qio.du86
             (coe
                MAlonzo.Code.Qio.d14
                (coe
                   MAlonzo.Code.Qrun.d134 MAlonzo.Code.QaggycalZ45Ztypes.d610 v1))
             (coe MAlonzo.Code.Qio.d14 (coe Data.Text.pack "\n"))
      False -> coe MAlonzo.Code.Qio.d6 erased erased
      _ -> coe MAlonzo.RTE.mazUnreachableError
name488 = "aggycal-create.processArgs"
d488 v0 v1 v2
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
                     _ | (==) v3 (Data.Text.pack "--showParsed") -> coe d488 v0 True v4
                     _ | (==) v3 (Data.Text.pack "--showRun") -> coe d488 True v1 v4
                     _ -> coe v5 in
           case coe v4 of
             MAlonzo.Code.Qlist.C12
               -> coe
                    MAlonzo.Code.Qio.d12 erased erased (coe MAlonzo.Code.Qio.d16 v3)
                    (coe du500 v0 v1)
             _ -> coe v5
      _ -> coe MAlonzo.RTE.mazUnreachableError
name500 = "aggycal-create._.processText"
d500 v0 v1 v2 v3 = du500 v0 v1 v3
du500 v0 v1 v2
  = let v3
          = coe
              MAlonzo.Code.Qparse.du982 MAlonzo.Code.QaggycalZ45Ztypes.d610
              erased MAlonzo.Code.Qaggycal.d156
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
        -> let v5 = coe d478 v0 v4 in
           let v6
                 = coe MAlonzo.Code.Qparse.du1096 MAlonzo.Code.Qaggycal.d758 v4 in
           let v7 = coe d478 v1 v6 in
           coe
             MAlonzo.Code.Qio.du86 (coe MAlonzo.Code.Qio.du86 v5 v7)
             (coe d472 v6)
      _ -> coe MAlonzo.RTE.mazUnreachableError
main = d582
name582 = "aggycal-create.main"
d582
  = coe
      MAlonzo.Code.Qio.d12 erased erased MAlonzo.Code.Qio.d60
      (coe d488 False False)