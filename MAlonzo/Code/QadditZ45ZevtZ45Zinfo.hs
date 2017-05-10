{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.QadditZ45ZevtZ45Zinfo where

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
import qualified MAlonzo.Code.Qlist
import qualified MAlonzo.Code.Qproduct
import qualified MAlonzo.Code.Qstring

name2 = "addit-evt-info.aDate"
d2 = erased
name4 = "addit-evt-info.aTime"
d4 = erased
name6 = "addit-evt-info.datetime"
d6 = erased
name8 = "addit-evt-info.addit-evt-info"
d8 = ()
newtype T8 a0 = C10 a0
name12 = "addit-evt-info.midnight"
d12
  = coe
      MAlonzo.Code.Qproduct.C24 (coe Data.Text.pack "00")
      (coe Data.Text.pack "00")
name14 = "addit-evt-info.aDate-to-string"
d14 v0
  = case coe v0 of
      MAlonzo.Code.Qproduct.C24 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Qproduct.C24 v3 v4
               -> coe
                    MAlonzo.Code.Qstring.d12 v1 (coe MAlonzo.Code.Qstring.d12 v3 v4)
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name22 = "addit-evt-info.aTime-to-string"
d22 v0
  = case coe v0 of
      MAlonzo.Code.Qproduct.C24 v1 v2
        -> coe MAlonzo.Code.Qstring.d12 v1 v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name28 = "addit-evt-info.datetime-to-string"
d28 v0
  = case coe v0 of
      MAlonzo.Code.Qproduct.C24 v1 v2
        -> case coe v1 of
             MAlonzo.Code.Qproduct.C24 v3 v4
               -> case coe v4 of
                    MAlonzo.Code.Qproduct.C24 v5 v6
                      -> case coe v2 of
                           MAlonzo.Code.Qproduct.C24 v7 v8
                             -> coe
                                  MAlonzo.Code.Qstring.d12 v3
                                  (coe
                                     MAlonzo.Code.Qstring.d12 v5
                                     (coe
                                        MAlonzo.Code.Qstring.d12 v6
                                        (coe
                                           MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "T")
                                           (coe
                                              MAlonzo.Code.Qstring.d12 v7
                                              (coe
                                                 MAlonzo.Code.Qstring.d12 v8
                                                 (coe Data.Text.pack "00"))))))
                           _ -> coe MAlonzo.RTE.mazUnreachableError
                    _ -> coe MAlonzo.RTE.mazUnreachableError
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name40 = "addit-evt-info.addit-evt-info-to-string"
d40 v0
  = case coe v0 of
      C10 v1
        -> coe
             MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "DESCRIPTION:")
             (coe MAlonzo.Code.Qstring.d12 v1 (coe Data.Text.pack "\n"))
      _ -> coe MAlonzo.RTE.mazUnreachableError
name44 = "addit-evt-info.addit-evt-info-list-to-string"
d44 v0
  = case coe v0 of
      MAlonzo.Code.Qlist.C12 -> coe Data.Text.pack ""
      MAlonzo.Code.Qlist.C18 v1 v2
        -> coe MAlonzo.Code.Qstring.d12 (coe d40 v1) (coe d44 v2)
      _ -> coe MAlonzo.RTE.mazUnreachableError