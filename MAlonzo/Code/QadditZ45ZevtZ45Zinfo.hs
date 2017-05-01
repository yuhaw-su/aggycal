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
import qualified MAlonzo.Code.Qbool
import qualified MAlonzo.Code.Qlist
import qualified MAlonzo.Code.Qstring

name2 = "addit-evt-info.aDate"
d2 = erased
name4 = "addit-evt-info.aTime"
d4 = erased
name6 = "addit-evt-info.datetime"
d6 = erased
name8 = "addit-evt-info.addit-evt-info"
d8 = ()
data T8 a0 = C10 a0 | C12 a0
name14 = "addit-evt-info.addit-evt-info-to-string"
d14 v0
  = case coe v0 of
      C10 v1
        -> case coe v1 of
             True -> coe Data.Text.pack "All-day: YES"
             False -> coe Data.Text.pack "All-day: NO"
             _ -> coe MAlonzo.RTE.mazUnreachableError
      C12 v1
        -> coe
             MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "DESCRIPTION:")
             (coe MAlonzo.Code.Qstring.d12 v1 (coe Data.Text.pack "\n"))
      _ -> coe MAlonzo.RTE.mazUnreachableError
name28 = "addit-evt-info.addit-evt-info-list-to-string"
d28 v0
  = case coe v0 of
      MAlonzo.Code.Qlist.C12 -> coe Data.Text.pack ""
      MAlonzo.Code.Qlist.C18 v1 v2
        -> coe MAlonzo.Code.Qstring.d12 (coe d14 v1) (coe d28 v2)
      _ -> coe MAlonzo.RTE.mazUnreachableError