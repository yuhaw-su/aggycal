{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.QevtZ45Zinfo where

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
import qualified MAlonzo.Code.Qlist
import qualified MAlonzo.Code.Qproduct
import qualified MAlonzo.Code.Qstring

name2 = "evt-info.evt-info"
d2 = ()
data T2 a0 a1 a2 a3 = C4 a0 a1 a2 a3
name6 = "evt-info.evt-info-to-string"
d6 v0
  = case coe v0 of
      C4 v1 v2 v3 v4
        -> case coe v2 of
             MAlonzo.Code.Qproduct.C24 v5 v6
               -> case coe v3 of
                    MAlonzo.Code.Qproduct.C24 v7 v8
                      -> case coe v8 of
                           MAlonzo.Code.Qproduct.C24 v9 v10
                             -> let v11
                                      = coe
                                          MAlonzo.Code.Qstring.d12
                                          (coe Data.Text.pack "BEGIN:VEVENT\n")
                                          (coe
                                             MAlonzo.Code.Qstring.d12
                                             (coe Data.Text.pack "SUMMARY:")
                                             (coe
                                                MAlonzo.Code.Qstring.d12 v1
                                                (coe
                                                   MAlonzo.Code.Qstring.d12
                                                   (coe Data.Text.pack "\n")
                                                   (coe
                                                      MAlonzo.Code.Qstring.d12
                                                      (coe Data.Text.pack "DTSTART:")
                                                      (coe
                                                         MAlonzo.Code.Qstring.d12
                                                         (coe
                                                            MAlonzo.Code.QadditZ45ZevtZ45Zinfo.d14
                                                            v5)
                                                         (coe
                                                            MAlonzo.Code.Qstring.d12
                                                            (coe Data.Text.pack "T")
                                                            (coe
                                                               MAlonzo.Code.Qstring.d12
                                                               (coe
                                                                  MAlonzo.Code.QadditZ45ZevtZ45Zinfo.d22
                                                                  v6)
                                                               (coe
                                                                  MAlonzo.Code.Qstring.d12
                                                                  (coe Data.Text.pack "00\n")
                                                                  (coe
                                                                     MAlonzo.Code.Qstring.d12
                                                                     (coe Data.Text.pack "DTEND:")
                                                                     (coe
                                                                        MAlonzo.Code.Qstring.d12
                                                                        (coe
                                                                           MAlonzo.Code.QadditZ45ZevtZ45Zinfo.d14
                                                                           v7)
                                                                        (coe
                                                                           MAlonzo.Code.Qstring.d12
                                                                           (coe Data.Text.pack "T")
                                                                           (coe
                                                                              MAlonzo.Code.Qstring.d12
                                                                              (coe
                                                                                 MAlonzo.Code.QadditZ45ZevtZ45Zinfo.d22
                                                                                 v8)
                                                                              (coe
                                                                                 MAlonzo.Code.Qstring.d12
                                                                                 (coe
                                                                                    Data.Text.pack
                                                                                    "00\n")
                                                                                 (coe
                                                                                    MAlonzo.Code.Qstring.d12
                                                                                    (coe
                                                                                       MAlonzo.Code.QadditZ45ZevtZ45Zinfo.d44
                                                                                       v4)
                                                                                    (coe
                                                                                       Data.Text.pack
                                                                                       "END:VEVENT\n"))))))))))))))) in
                                case coe v9 of
                                  _ | (==) v9 (Data.Text.pack "00") ->
                                      case coe v10 of
                                        _ | (==) v10 (Data.Text.pack "00") ->
                                            coe
                                              MAlonzo.Code.Qstring.d12
                                              (coe Data.Text.pack "BEGIN:VEVENT\n")
                                              (coe
                                                 MAlonzo.Code.Qstring.d12
                                                 (coe Data.Text.pack "SUMMARY:")
                                                 (coe
                                                    MAlonzo.Code.Qstring.d12 v1
                                                    (coe
                                                       MAlonzo.Code.Qstring.d12
                                                       (coe Data.Text.pack "\n")
                                                       (coe
                                                          MAlonzo.Code.Qstring.d12
                                                          (coe Data.Text.pack "DTSTART;VALUE=DATE:")
                                                          (coe
                                                             MAlonzo.Code.Qstring.d12
                                                             (coe
                                                                MAlonzo.Code.QadditZ45ZevtZ45Zinfo.d14
                                                                v5)
                                                             (coe
                                                                MAlonzo.Code.Qstring.d12
                                                                (coe Data.Text.pack "\n")
                                                                (coe
                                                                   MAlonzo.Code.Qstring.d12
                                                                   (coe
                                                                      Data.Text.pack
                                                                      "DTEND;VALUE=DATE:")
                                                                   (coe
                                                                      MAlonzo.Code.Qstring.d12
                                                                      (coe
                                                                         MAlonzo.Code.QadditZ45ZevtZ45Zinfo.d14
                                                                         v7)
                                                                      (coe
                                                                         MAlonzo.Code.Qstring.d12
                                                                         (coe Data.Text.pack "\n")
                                                                         (coe
                                                                            MAlonzo.Code.Qstring.d12
                                                                            (coe
                                                                               MAlonzo.Code.QadditZ45ZevtZ45Zinfo.d44
                                                                               v4)
                                                                            (coe
                                                                               Data.Text.pack
                                                                               "END:VEVENT\n")))))))))))
                                        _ -> coe v11
                                  _ -> coe v11
                           _ -> coe MAlonzo.RTE.mazUnreachableError
                    _ -> coe MAlonzo.RTE.mazUnreachableError
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name50 = "evt-info.\120131evt-info-to-string"
d50 v0
  = case coe v0 of
      MAlonzo.Code.Qlist.C12 -> coe Data.Text.pack ""
      MAlonzo.Code.Qlist.C18 v1 v2
        -> coe MAlonzo.Code.Qstring.d12 (coe d6 v1) (coe d50 v2)
      _ -> coe MAlonzo.RTE.mazUnreachableError