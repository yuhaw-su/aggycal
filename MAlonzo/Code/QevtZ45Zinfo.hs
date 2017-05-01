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
               -> case coe v5 of
                    MAlonzo.Code.Qproduct.C24 v7 v8
                      -> case coe v8 of
                           MAlonzo.Code.Qproduct.C24 v9 v10
                             -> case coe v6 of
                                  MAlonzo.Code.Qproduct.C24 v11 v12
                                    -> case coe v3 of
                                         MAlonzo.Code.Qproduct.C24 v13 v14
                                           -> case coe v13 of
                                                MAlonzo.Code.Qproduct.C24 v15 v16
                                                  -> case coe v16 of
                                                       MAlonzo.Code.Qproduct.C24 v17 v18
                                                         -> case coe v14 of
                                                              MAlonzo.Code.Qproduct.C24 v19 v20
                                                                -> coe
                                                                     MAlonzo.Code.Qstring.d12
                                                                     (coe
                                                                        Data.Text.pack
                                                                        "BEGIN:VEVENT\n")
                                                                     (coe
                                                                        MAlonzo.Code.Qstring.d12
                                                                        (coe
                                                                           Data.Text.pack
                                                                           "SUMMARY:")
                                                                        (coe
                                                                           MAlonzo.Code.Qstring.d12
                                                                           v1
                                                                           (coe
                                                                              MAlonzo.Code.Qstring.d12
                                                                              (coe
                                                                                 Data.Text.pack
                                                                                 "\n")
                                                                              (coe
                                                                                 MAlonzo.Code.Qstring.d12
                                                                                 (coe
                                                                                    Data.Text.pack
                                                                                    "DTSTART:")
                                                                                 (coe
                                                                                    MAlonzo.Code.Qstring.d12
                                                                                    v7
                                                                                    (coe
                                                                                       MAlonzo.Code.Qstring.d12
                                                                                       v9
                                                                                       (coe
                                                                                          MAlonzo.Code.Qstring.d12
                                                                                          v10
                                                                                          (coe
                                                                                             MAlonzo.Code.Qstring.d12
                                                                                             (coe
                                                                                                Data.Text.pack
                                                                                                "T")
                                                                                             (coe
                                                                                                MAlonzo.Code.Qstring.d12
                                                                                                v11
                                                                                                (coe
                                                                                                   MAlonzo.Code.Qstring.d12
                                                                                                   v12
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Qstring.d12
                                                                                                      (coe
                                                                                                         Data.Text.pack
                                                                                                         "00\n")
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Qstring.d12
                                                                                                         (coe
                                                                                                            Data.Text.pack
                                                                                                            "DTEND:")
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Qstring.d12
                                                                                                            v15
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Qstring.d12
                                                                                                               v17
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Qstring.d12
                                                                                                                  v18
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Qstring.d12
                                                                                                                     (coe
                                                                                                                        Data.Text.pack
                                                                                                                        "T")
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Qstring.d12
                                                                                                                        v19
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Qstring.d12
                                                                                                                           v20
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Qstring.d12
                                                                                                                              (coe
                                                                                                                                 Data.Text.pack
                                                                                                                                 "00\n")
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Qstring.d12
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.QadditZ45ZevtZ45Zinfo.d28
                                                                                                                                    v4)
                                                                                                                                 (coe
                                                                                                                                    Data.Text.pack
                                                                                                                                    "END:VEVENT\n")))))))))))))))))))))
                                                              _ -> coe
                                                                     MAlonzo.RTE.mazUnreachableError
                                                       _ -> coe MAlonzo.RTE.mazUnreachableError
                                                _ -> coe MAlonzo.RTE.mazUnreachableError
                                         _ -> coe MAlonzo.RTE.mazUnreachableError
                                  _ -> coe MAlonzo.RTE.mazUnreachableError
                           _ -> coe MAlonzo.RTE.mazUnreachableError
                    _ -> coe MAlonzo.RTE.mazUnreachableError
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError