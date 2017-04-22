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
name8 = "aggycal-types.digit-range-28"
d8 = erased
name10 = "aggycal-types.hour"
d10 = erased
name12 = "aggycal-types.minute"
d12 = erased
name14 = "aggycal-types.month"
d14 = erased
name16 = "aggycal-types.symbol"
d16 = erased
name18 = "aggycal-types.symbol-bar-10"
d18 = erased
name20 = "aggycal-types.symbol-bar-11"
d20 = erased
name22 = "aggycal-types.symbol-bar-12"
d22 = erased
name24 = "aggycal-types.symbol-bar-13"
d24 = erased
name26 = "aggycal-types.symbol-bar-14"
d26 = erased
name28 = "aggycal-types.symbol-bar-15"
d28 = erased
name30 = "aggycal-types.symbol-bar-16"
d30 = erased
name32 = "aggycal-types.symbol-bar-17"
d32 = erased
name34 = "aggycal-types.symbol-bar-18"
d34 = erased
name36 = "aggycal-types.symbol-bar-19"
d36 = erased
name38 = "aggycal-types.symbol-bar-20"
d38 = erased
name40 = "aggycal-types.symbol-bar-21"
d40 = erased
name42 = "aggycal-types.symbol-bar-22"
d42 = erased
name44 = "aggycal-types.symbol-bar-23"
d44 = erased
name46 = "aggycal-types.symbol-bar-24"
d46 = erased
name48 = "aggycal-types.symbol-bar-5"
d48 = erased
name50 = "aggycal-types.symbol-bar-6"
d50 = erased
name52 = "aggycal-types.symbol-bar-7"
d52 = erased
name54 = "aggycal-types.symbol-bar-8"
d54 = erased
name56 = "aggycal-types.symbol-bar-9"
d56 = erased
name58 = "aggycal-types.twodigit"
d58 = erased
name60 = "aggycal-types.words"
d60 = erased
name62 = "aggycal-types.words-bar-26"
d62 = erased
name64 = "aggycal-types.words-plus-27"
d64 = erased
name66 = "aggycal-types.words-range-25"
d66 = erased
name68 = "aggycal-types.year"
d68 = erased
name70 = "aggycal-types.date"
d70 = ()
data T70 a0 a1 a2 = C84 a0 a1 a2 | C86 a0 a1 a2
name72 = "aggycal-types.description"
d72 = ()
data T72 a0 = C88 a0 | C90
name74 = "aggycal-types.evtname"
d74 = ()
newtype T74 a0 = C92 a0
name76 = "aggycal-types.strt"
d76 = ()
data T76 a0 a1 a2 a3 = C94 a0 a1 a2 a3
name78 = "aggycal-types.time"
d78 = ()
data T78 a0 a1 a2 = C96 a0 a1 | C98 a0 a1 a2
name80 = "aggycal-types.timerange"
d80 = ()
data T80 a0 a1 = C100 | C102 a0 a1
name82 = "aggycal-types.whichm"
d82 = ()
data T82 = C104 | C106
name108 = "aggycal-types.ParseTreeT"
d108 = ()
data T108 a0
  = C110 a0 | C112 a0 | C114 a0 | C116 a0 | C118 a0 | C120 a0 |
    C122 a0 | C124 a0 | C126 a0 | C128 a0 | C130 a0 | C132 a0 |
    C134 a0 | C136 a0 | C138 a0 | C140 a0 | C142 a0 | C144 a0 |
    C146 a0 | C148 a0 | C150 a0 | C152 a0 | C154 a0 | C156 a0 |
    C158 a0 | C160 a0 | C162 a0 | C164 a0 | C166 a0 | C168 a0 |
    C170 a0 | C172 a0 | C174 a0 | C176 a0 | C178 a0 | C180 a0 |
    C182 a0 | C184 a0 | C186 a0 | C188 a0 | C190 a0 | C192 | C194 |
    C196 | C198 | C200 | C202 | C204 | C206 | C208 | C210 | C212 |
    C214 | C216 | C218 | C220 | C222 | C224 | C226 | C228 | C230 |
    C232 | C234 | C236 | C238
name240 = "aggycal-types.posinfoToString"
d240 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(posinfo ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name244 = "aggycal-types.dayToString"
d244 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(day ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name248 = "aggycal-types.digitToString"
d248 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(digit ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name252 = "aggycal-types.digit-range-28ToString"
d252 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(digit-range-28 ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name256 = "aggycal-types.hourToString"
d256 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(hour ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name260 = "aggycal-types.minuteToString"
d260 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(minute ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name264 = "aggycal-types.monthToString"
d264 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(month ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name268 = "aggycal-types.symbolToString"
d268 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(symbol ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name272 = "aggycal-types.symbol-bar-10ToString"
d272 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(symbol-bar-10 ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name276 = "aggycal-types.symbol-bar-11ToString"
d276 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(symbol-bar-11 ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name280 = "aggycal-types.symbol-bar-12ToString"
d280 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(symbol-bar-12 ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name284 = "aggycal-types.symbol-bar-13ToString"
d284 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(symbol-bar-13 ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name288 = "aggycal-types.symbol-bar-14ToString"
d288 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(symbol-bar-14 ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name292 = "aggycal-types.symbol-bar-15ToString"
d292 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(symbol-bar-15 ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name296 = "aggycal-types.symbol-bar-16ToString"
d296 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(symbol-bar-16 ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name300 = "aggycal-types.symbol-bar-17ToString"
d300 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(symbol-bar-17 ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name304 = "aggycal-types.symbol-bar-18ToString"
d304 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(symbol-bar-18 ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name308 = "aggycal-types.symbol-bar-19ToString"
d308 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(symbol-bar-19 ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name312 = "aggycal-types.symbol-bar-20ToString"
d312 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(symbol-bar-20 ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name316 = "aggycal-types.symbol-bar-21ToString"
d316 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(symbol-bar-21 ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name320 = "aggycal-types.symbol-bar-22ToString"
d320 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(symbol-bar-22 ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name324 = "aggycal-types.symbol-bar-23ToString"
d324 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(symbol-bar-23 ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name328 = "aggycal-types.symbol-bar-24ToString"
d328 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(symbol-bar-24 ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name332 = "aggycal-types.symbol-bar-5ToString"
d332 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(symbol-bar-5 ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name336 = "aggycal-types.symbol-bar-6ToString"
d336 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(symbol-bar-6 ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name340 = "aggycal-types.symbol-bar-7ToString"
d340 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(symbol-bar-7 ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name344 = "aggycal-types.symbol-bar-8ToString"
d344 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(symbol-bar-8 ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name348 = "aggycal-types.symbol-bar-9ToString"
d348 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(symbol-bar-9 ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name352 = "aggycal-types.twodigitToString"
d352 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(twodigit ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name356 = "aggycal-types.wordsToString"
d356 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(words ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name360 = "aggycal-types.words-bar-26ToString"
d360 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(words-bar-26 ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name364 = "aggycal-types.words-plus-27ToString"
d364 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(words-plus-27 ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name368 = "aggycal-types.words-range-25ToString"
d368 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(words-range-25 ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name372 = "aggycal-types.yearToString"
d372 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(year ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name376 = "aggycal-types.dateToString"
d376 v0
  = case coe v0 of
      C84 v1 v2 v3
        -> coe
             MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(AmericanDate")
             (coe
                MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                (coe
                   MAlonzo.Code.Qstring.d12 (coe d264 v1)
                   (coe
                      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                      (coe
                         MAlonzo.Code.Qstring.d12 (coe d244 v2)
                         (coe
                            MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                            (coe
                               MAlonzo.Code.Qstring.d12 (coe d372 v3)
                               (coe Data.Text.pack ")")))))))
      C86 v1 v2 v3
        -> coe
             MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(GlobalDate")
             (coe
                MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                (coe
                   MAlonzo.Code.Qstring.d12 (coe d372 v1)
                   (coe
                      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                      (coe
                         MAlonzo.Code.Qstring.d12 (coe d264 v2)
                         (coe
                            MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                            (coe
                               MAlonzo.Code.Qstring.d12 (coe d244 v3)
                               (coe Data.Text.pack ")")))))))
      _ -> coe MAlonzo.RTE.mazUnreachableError
name378 = "aggycal-types.descriptionToString"
d378 v0
  = case coe v0 of
      C88 v1
        -> coe
             MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(Description")
             (coe
                MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                (coe
                   MAlonzo.Code.Qstring.d12 (coe d356 v1) (coe Data.Text.pack ")")))
      C90
        -> coe
             MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "NoDescription")
             (coe Data.Text.pack "")
      _ -> coe MAlonzo.RTE.mazUnreachableError
name380 = "aggycal-types.evtnameToString"
d380 v0
  = case coe v0 of
      C92 v1
        -> coe
             MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(EventName")
             (coe
                MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                (coe
                   MAlonzo.Code.Qstring.d12 (coe d356 v1) (coe Data.Text.pack ")")))
      _ -> coe MAlonzo.RTE.mazUnreachableError
name382 = "aggycal-types.strtToString"
d382 v0
  = case coe v0 of
      C94 v1 v2 v3 v4
        -> coe
             MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(Strt")
             (coe
                MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                (coe
                   MAlonzo.Code.Qstring.d12 (coe d380 v1)
                   (coe
                      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                      (coe
                         MAlonzo.Code.Qstring.d12 (coe d376 v2)
                         (coe
                            MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                            (coe
                               MAlonzo.Code.Qstring.d12 (coe d386 v3)
                               (coe
                                  MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                                  (coe
                                     MAlonzo.Code.Qstring.d12 (coe d378 v4)
                                     (coe Data.Text.pack ")")))))))))
      _ -> coe MAlonzo.RTE.mazUnreachableError
name384 = "aggycal-types.timeToString"
d384 v0
  = case coe v0 of
      C96 v1 v2
        -> coe
             MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(MilitaryTime")
             (coe
                MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                (coe
                   MAlonzo.Code.Qstring.d12 (coe d256 v1)
                   (coe
                      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                      (coe
                         MAlonzo.Code.Qstring.d12 (coe d260 v2) (coe Data.Text.pack ")")))))
      C98 v1 v2 v3
        -> coe
             MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(RegTime")
             (coe
                MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                (coe
                   MAlonzo.Code.Qstring.d12 (coe d256 v1)
                   (coe
                      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                      (coe
                         MAlonzo.Code.Qstring.d12 (coe d260 v2)
                         (coe
                            MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                            (coe
                               MAlonzo.Code.Qstring.d12 (coe d388 v3)
                               (coe Data.Text.pack ")")))))))
      _ -> coe MAlonzo.RTE.mazUnreachableError
name386 = "aggycal-types.timerangeToString"
d386 v0
  = case coe v0 of
      C100
        -> coe
             MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "AllDayRange")
             (coe Data.Text.pack "")
      C102 v1 v2
        -> coe
             MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(TimeRange")
             (coe
                MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                (coe
                   MAlonzo.Code.Qstring.d12 (coe d384 v1)
                   (coe
                      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                      (coe
                         MAlonzo.Code.Qstring.d12 (coe d384 v2) (coe Data.Text.pack ")")))))
      _ -> coe MAlonzo.RTE.mazUnreachableError
name388 = "aggycal-types.whichmToString"
d388 v0
  = case coe v0 of
      C104
        -> coe
             MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "AM")
             (coe Data.Text.pack "")
      C106
        -> coe
             MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "PM")
             (coe Data.Text.pack "")
      _ -> coe MAlonzo.RTE.mazUnreachableError
name428 = "aggycal-types.ParseTreeToString"
d428 v0
  = case coe v0 of
      C110 v1 -> coe d376 v1
      C112 v1 -> coe d378 v1
      C114 v1 -> coe d380 v1
      C116 v1 -> coe d382 v1
      C118 v1 -> coe d384 v1
      C120 v1 -> coe d386 v1
      C122 v1 -> coe d388 v1
      C124 v1 -> coe d240 v1
      C126 v1 -> coe d244 v1
      C128 v1 -> coe d248 v1
      C130 v1 -> coe d252 v1
      C132 v1 -> coe d256 v1
      C134 v1 -> coe d260 v1
      C136 v1 -> coe d264 v1
      C138 v1 -> coe d268 v1
      C140 v1 -> coe d272 v1
      C142 v1 -> coe d276 v1
      C144 v1 -> coe d280 v1
      C146 v1 -> coe d284 v1
      C148 v1 -> coe d288 v1
      C150 v1 -> coe d292 v1
      C152 v1 -> coe d296 v1
      C154 v1 -> coe d300 v1
      C156 v1 -> coe d304 v1
      C158 v1 -> coe d308 v1
      C160 v1 -> coe d312 v1
      C162 v1 -> coe d316 v1
      C164 v1 -> coe d320 v1
      C166 v1 -> coe d324 v1
      C168 v1 -> coe d328 v1
      C170 v1 -> coe d332 v1
      C172 v1 -> coe d336 v1
      C174 v1 -> coe d340 v1
      C176 v1 -> coe d344 v1
      C178 v1 -> coe d348 v1
      C180 v1 -> coe d352 v1
      C182 v1 -> coe d356 v1
      C184 v1 -> coe d360 v1
      C186 v1 -> coe d364 v1
      C188 v1 -> coe d368 v1
      C190 v1 -> coe d372 v1
      C192 -> coe Data.Text.pack "[allday]"
      C194 -> coe Data.Text.pack "[alldayA]"
      C196 -> coe Data.Text.pack "[alldayA-bar-35]"
      C198 -> coe Data.Text.pack "[alldayA-bar-36]"
      C200 -> coe Data.Text.pack "[alldayD]"
      C202 -> coe Data.Text.pack "[alldayD-bar-37]"
      C204 -> coe Data.Text.pack "[alldayD-bar-38]"
      C206 -> coe Data.Text.pack "[am]"
      C208 -> coe Data.Text.pack "[am-bar-32]"
      C210 -> coe Data.Text.pack "[aws]"
      C212 -> coe Data.Text.pack "[aws-bar-1]"
      C214 -> coe Data.Text.pack "[aws-bar-2]"
      C216 -> coe Data.Text.pack "[datesep]"
      C218 -> coe Data.Text.pack "[datesep-bar-29]"
      C220 -> coe Data.Text.pack "[datesep-bar-30]"
      C222 -> coe Data.Text.pack "[datesep-bar-31]"
      C224 -> coe Data.Text.pack "[ows]"
      C226 -> coe Data.Text.pack "[ows-star-4]"
      C228 -> coe Data.Text.pack "[pm]"
      C230 -> coe Data.Text.pack "[pm-bar-33]"
      C232 -> coe Data.Text.pack "[timesep]"
      C234 -> coe Data.Text.pack "[timesep-bar-34]"
      C236 -> coe Data.Text.pack "[ws]"
      C238 -> coe Data.Text.pack "[ws-plus-3]"
      _ -> coe MAlonzo.RTE.mazUnreachableError
name514 = "aggycal-types.norm-whichm"
d514 v0 = coe v0
name518 = "aggycal-types.norm-timerange"
d518 v0 = coe v0
name522 = "aggycal-types.norm-time"
d522 v0 = coe v0
name526 = "aggycal-types.norm-strt"
d526 v0 = coe v0
name530 = "aggycal-types.norm-posinfo"
d530 v0 = coe v0
name534 = "aggycal-types.norm-evtname"
d534 v0 = coe v0
name538 = "aggycal-types.norm-description"
d538 v0 = coe v0
name542 = "aggycal-types.norm-date"
d542 v0 = coe v0
name560 = "aggycal-types.isParseTree"
d560 = erased
name568 = "aggycal-types.ptr"
d568 = coe MAlonzo.Code.QparseZ45Ztree.C1 d428