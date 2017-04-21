{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.QaggycalZ45Ztypes where

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
import qualified MAlonzo.Code.QparseZ45Ztree
import qualified MAlonzo.Code.Qstring

name2 = "aggycal-types.posinfo"
d2 = erased
name4 = "aggycal-types.day"
d4 = erased
name6 = "aggycal-types.digit"
d6 = erased
name8 = "aggycal-types.digit-range-10"
d8 = erased
name10 = "aggycal-types.hour"
d10 = erased
name12 = "aggycal-types.minute"
d12 = erased
name14 = "aggycal-types.month"
d14 = erased
name16 = "aggycal-types.twodigit"
d16 = erased
name18 = "aggycal-types.words"
d18 = erased
name20 = "aggycal-types.words-bar-6"
d20 = erased
name22 = "aggycal-types.words-bar-7"
d22 = erased
name24 = "aggycal-types.words-bar-8"
d24 = erased
name26 = "aggycal-types.words-plus-9"
d26 = erased
name28 = "aggycal-types.words-range-5"
d28 = erased
name30 = "aggycal-types.year"
d30 = erased
name32 = "aggycal-types.date"
d32 = ()
data T32 a0 a1 a2 = C44 a0 a1 a2 | C46 a0 a1 a2
name34 = "aggycal-types.evtname"
d34 = ()
newtype T34 a0 = C48 a0
name36 = "aggycal-types.strt"
d36 = ()
data T36 a0 a1 a2 = C50 a0 a1 a2
name38 = "aggycal-types.time"
d38 = ()
data T38 a0 a1 a2 = C52 a0 a1 | C54 a0 a1 a2
name40 = "aggycal-types.timerange"
d40 = ()
data T40 a0 a1 = C56 | C58 a0 a1
name42 = "aggycal-types.whichm"
d42 = ()
data T42 = C60 | C62
name64 = "aggycal-types.ParseTreeT"
d64 = ()
data T64 a0
  = C66 a0 | C68 a0 | C70 a0 | C72 a0 | C74 a0 | C76 a0 | C78 a0 |
    C80 a0 | C82 a0 | C84 a0 | C86 a0 | C88 a0 | C90 a0 | C92 a0 |
    C94 a0 | C96 a0 | C98 a0 | C100 a0 | C102 a0 | C104 a0 | C106 a0 |
    C108 | C110 | C112 | C114 | C116 | C118 | C120 | C122 | C124 |
    C126 | C128 | C130 | C132 | C134 | C136 | C138 | C140 | C142 |
    C144 | C146 | C148 | C150 | C152 | C154
name156 = "aggycal-types.posinfoToString"
d156 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(posinfo ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name160 = "aggycal-types.dayToString"
d160 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(day ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name164 = "aggycal-types.digitToString"
d164 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(digit ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name168 = "aggycal-types.digit-range-10ToString"
d168 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(digit-range-10 ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name172 = "aggycal-types.hourToString"
d172 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(hour ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name176 = "aggycal-types.minuteToString"
d176 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(minute ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name180 = "aggycal-types.monthToString"
d180 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(month ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name184 = "aggycal-types.twodigitToString"
d184 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(twodigit ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name188 = "aggycal-types.wordsToString"
d188 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(words ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name192 = "aggycal-types.words-bar-6ToString"
d192 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(words-bar-6 ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name196 = "aggycal-types.words-bar-7ToString"
d196 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(words-bar-7 ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name200 = "aggycal-types.words-bar-8ToString"
d200 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(words-bar-8 ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name204 = "aggycal-types.words-plus-9ToString"
d204 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(words-plus-9 ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name208 = "aggycal-types.words-range-5ToString"
d208 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(words-range-5 ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name212 = "aggycal-types.yearToString"
d212 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(year ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name216 = "aggycal-types.dateToString"
d216 v0
  = case coe v0 of
      C44 v1 v2 v3
        -> coe
             MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(AmericanDate")
             (coe
                MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                (coe
                   MAlonzo.Code.Qstring.d12 (coe d180 v1)
                   (coe
                      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                      (coe
                         MAlonzo.Code.Qstring.d12 (coe d160 v2)
                         (coe
                            MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                            (coe
                               MAlonzo.Code.Qstring.d12 (coe d212 v3)
                               (coe Data.Text.pack ")")))))))
      C46 v1 v2 v3
        -> coe
             MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(GlobalDate")
             (coe
                MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                (coe
                   MAlonzo.Code.Qstring.d12 (coe d212 v1)
                   (coe
                      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                      (coe
                         MAlonzo.Code.Qstring.d12 (coe d180 v2)
                         (coe
                            MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                            (coe
                               MAlonzo.Code.Qstring.d12 (coe d160 v3)
                               (coe Data.Text.pack ")")))))))
      _ -> coe MAlonzo.RTE.mazUnreachableError
name218 = "aggycal-types.evtnameToString"
d218 v0
  = case coe v0 of
      C48 v1
        -> coe
             MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(EventName")
             (coe
                MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                (coe
                   MAlonzo.Code.Qstring.d12 (coe d188 v1) (coe Data.Text.pack ")")))
      _ -> coe MAlonzo.RTE.mazUnreachableError
name220 = "aggycal-types.strtToString"
d220 v0
  = case coe v0 of
      C50 v1 v2 v3
        -> coe
             MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(Strt")
             (coe
                MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                (coe
                   MAlonzo.Code.Qstring.d12 (coe d218 v1)
                   (coe
                      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                      (coe
                         MAlonzo.Code.Qstring.d12 (coe d216 v2)
                         (coe
                            MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                            (coe
                               MAlonzo.Code.Qstring.d12 (coe d224 v3)
                               (coe Data.Text.pack ")")))))))
      _ -> coe MAlonzo.RTE.mazUnreachableError
name222 = "aggycal-types.timeToString"
d222 v0
  = case coe v0 of
      C52 v1 v2
        -> coe
             MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(MilitaryTime")
             (coe
                MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                (coe
                   MAlonzo.Code.Qstring.d12 (coe d172 v1)
                   (coe
                      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                      (coe
                         MAlonzo.Code.Qstring.d12 (coe d176 v2) (coe Data.Text.pack ")")))))
      C54 v1 v2 v3
        -> coe
             MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(RegTime")
             (coe
                MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                (coe
                   MAlonzo.Code.Qstring.d12 (coe d172 v1)
                   (coe
                      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                      (coe
                         MAlonzo.Code.Qstring.d12 (coe d176 v2)
                         (coe
                            MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                            (coe
                               MAlonzo.Code.Qstring.d12 (coe d226 v3)
                               (coe Data.Text.pack ")")))))))
      _ -> coe MAlonzo.RTE.mazUnreachableError
name224 = "aggycal-types.timerangeToString"
d224 v0
  = case coe v0 of
      C56
        -> coe
             MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "AllDayRange")
             (coe Data.Text.pack "")
      C58 v1 v2
        -> coe
             MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(TimeRange")
             (coe
                MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                (coe
                   MAlonzo.Code.Qstring.d12 (coe d222 v1)
                   (coe
                      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                      (coe
                         MAlonzo.Code.Qstring.d12 (coe d222 v2) (coe Data.Text.pack ")")))))
      _ -> coe MAlonzo.RTE.mazUnreachableError
name226 = "aggycal-types.whichmToString"
d226 v0
  = case coe v0 of
      C60
        -> coe
             MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "AM")
             (coe Data.Text.pack "")
      C62
        -> coe
             MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "PM")
             (coe Data.Text.pack "")
      _ -> coe MAlonzo.RTE.mazUnreachableError
name262 = "aggycal-types.ParseTreeToString"
d262 v0
  = case coe v0 of
      C66 v1 -> coe d216 v1
      C68 v1 -> coe d218 v1
      C70 v1 -> coe d220 v1
      C72 v1 -> coe d222 v1
      C74 v1 -> coe d224 v1
      C76 v1 -> coe d226 v1
      C78 v1 -> coe d156 v1
      C80 v1 -> coe d160 v1
      C82 v1 -> coe d164 v1
      C84 v1 -> coe d168 v1
      C86 v1 -> coe d172 v1
      C88 v1 -> coe d176 v1
      C90 v1 -> coe d180 v1
      C92 v1 -> coe d184 v1
      C94 v1 -> coe d188 v1
      C96 v1 -> coe d192 v1
      C98 v1 -> coe d196 v1
      C100 v1 -> coe d200 v1
      C102 v1 -> coe d204 v1
      C104 v1 -> coe d208 v1
      C106 v1 -> coe d212 v1
      C108 -> coe Data.Text.pack "[allday]"
      C110 -> coe Data.Text.pack "[alldayA]"
      C112 -> coe Data.Text.pack "[alldayA-bar-17]"
      C114 -> coe Data.Text.pack "[alldayA-bar-18]"
      C116 -> coe Data.Text.pack "[alldayD]"
      C118 -> coe Data.Text.pack "[alldayD-bar-19]"
      C120 -> coe Data.Text.pack "[alldayD-bar-20]"
      C122 -> coe Data.Text.pack "[am]"
      C124 -> coe Data.Text.pack "[am-bar-14]"
      C126 -> coe Data.Text.pack "[aws]"
      C128 -> coe Data.Text.pack "[aws-bar-1]"
      C130 -> coe Data.Text.pack "[aws-bar-2]"
      C132 -> coe Data.Text.pack "[datesep]"
      C134 -> coe Data.Text.pack "[datesep-bar-11]"
      C136 -> coe Data.Text.pack "[datesep-bar-12]"
      C138 -> coe Data.Text.pack "[datesep-bar-13]"
      C140 -> coe Data.Text.pack "[ows]"
      C142 -> coe Data.Text.pack "[ows-star-4]"
      C144 -> coe Data.Text.pack "[pm]"
      C146 -> coe Data.Text.pack "[pm-bar-15]"
      C148 -> coe Data.Text.pack "[timesep]"
      C150 -> coe Data.Text.pack "[timesep-bar-16]"
      C152 -> coe Data.Text.pack "[ws]"
      C154 -> coe Data.Text.pack "[ws-plus-3]"
      _ -> coe MAlonzo.RTE.mazUnreachableError
name308 = "aggycal-types.norm-whichm"
d308 v0 = coe v0
name312 = "aggycal-types.norm-timerange"
d312 v0 = coe v0
name316 = "aggycal-types.norm-time"
d316 v0 = coe v0
name320 = "aggycal-types.norm-strt"
d320 v0 = coe v0
name324 = "aggycal-types.norm-posinfo"
d324 v0 = coe v0
name328 = "aggycal-types.norm-evtname"
d328 v0 = coe v0
name332 = "aggycal-types.norm-date"
d332 v0 = coe v0
name348 = "aggycal-types.isParseTree"
d348 = erased
name356 = "aggycal-types.ptr"
d356 = coe MAlonzo.Code.QparseZ45Ztree.C1 d262