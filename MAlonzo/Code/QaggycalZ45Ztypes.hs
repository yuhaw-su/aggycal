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
name8 = "aggycal-types.digit-range-24"
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
name40 = "aggycal-types.symbol-bar-5"
d40 = erased
name42 = "aggycal-types.symbol-bar-6"
d42 = erased
name44 = "aggycal-types.symbol-bar-7"
d44 = erased
name46 = "aggycal-types.symbol-bar-8"
d46 = erased
name48 = "aggycal-types.symbol-bar-9"
d48 = erased
name50 = "aggycal-types.twodigit"
d50 = erased
name52 = "aggycal-types.words"
d52 = erased
name54 = "aggycal-types.words-bar-22"
d54 = erased
name56 = "aggycal-types.words-plus-23"
d56 = erased
name58 = "aggycal-types.words-range-21"
d58 = erased
name60 = "aggycal-types.year"
d60 = erased
name62 = "aggycal-types.date"
d62 = ()
data T62 a0 a1 a2 = C76 a0 a1 a2 | C78 a0 a1 a2
name64 = "aggycal-types.description"
d64 = ()
data T64 a0 = C80 a0 | C82
name66 = "aggycal-types.evtname"
d66 = ()
newtype T66 a0 = C84 a0
name68 = "aggycal-types.strt"
d68 = ()
data T68 a0 a1 a2 a3 = C86 a0 a1 a2 a3
name70 = "aggycal-types.time"
d70 = ()
data T70 a0 a1 a2 = C88 a0 a1 | C90 a0 a1 a2
name72 = "aggycal-types.timerange"
d72 = ()
data T72 a0 a1 = C92 | C94 a0 a1
name74 = "aggycal-types.whichm"
d74 = ()
data T74 = C96 | C98
name100 = "aggycal-types.ParseTreeT"
d100 = ()
data T100 a0
  = C102 a0 | C104 a0 | C106 a0 | C108 a0 | C110 a0 | C112 a0 |
    C114 a0 | C116 a0 | C118 a0 | C120 a0 | C122 a0 | C124 a0 |
    C126 a0 | C128 a0 | C130 a0 | C132 a0 | C134 a0 | C136 a0 |
    C138 a0 | C140 a0 | C142 a0 | C144 a0 | C146 a0 | C148 a0 |
    C150 a0 | C152 a0 | C154 a0 | C156 a0 | C158 a0 | C160 a0 |
    C162 a0 | C164 a0 | C166 a0 | C168 a0 | C170 a0 | C172 a0 |
    C174 a0 | C176 | C178 | C180 | C182 | C184 | C186 | C188 | C190 |
    C192 | C194 | C196 | C198 | C200 | C202 | C204 | C206 | C208 |
    C210 | C212 | C214 | C216 | C218 | C220 | C222
name224 = "aggycal-types.posinfoToString"
d224 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(posinfo ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name228 = "aggycal-types.dayToString"
d228 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(day ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name232 = "aggycal-types.digitToString"
d232 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(digit ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name236 = "aggycal-types.digit-range-24ToString"
d236 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(digit-range-24 ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name240 = "aggycal-types.hourToString"
d240 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(hour ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name244 = "aggycal-types.minuteToString"
d244 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(minute ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name248 = "aggycal-types.monthToString"
d248 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(month ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name252 = "aggycal-types.symbolToString"
d252 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(symbol ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name256 = "aggycal-types.symbol-bar-10ToString"
d256 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(symbol-bar-10 ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name260 = "aggycal-types.symbol-bar-11ToString"
d260 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(symbol-bar-11 ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name264 = "aggycal-types.symbol-bar-12ToString"
d264 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(symbol-bar-12 ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name268 = "aggycal-types.symbol-bar-13ToString"
d268 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(symbol-bar-13 ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name272 = "aggycal-types.symbol-bar-14ToString"
d272 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(symbol-bar-14 ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name276 = "aggycal-types.symbol-bar-15ToString"
d276 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(symbol-bar-15 ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name280 = "aggycal-types.symbol-bar-16ToString"
d280 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(symbol-bar-16 ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name284 = "aggycal-types.symbol-bar-17ToString"
d284 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(symbol-bar-17 ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name288 = "aggycal-types.symbol-bar-18ToString"
d288 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(symbol-bar-18 ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name292 = "aggycal-types.symbol-bar-19ToString"
d292 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(symbol-bar-19 ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name296 = "aggycal-types.symbol-bar-20ToString"
d296 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(symbol-bar-20 ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name300 = "aggycal-types.symbol-bar-5ToString"
d300 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(symbol-bar-5 ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name304 = "aggycal-types.symbol-bar-6ToString"
d304 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(symbol-bar-6 ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name308 = "aggycal-types.symbol-bar-7ToString"
d308 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(symbol-bar-7 ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name312 = "aggycal-types.symbol-bar-8ToString"
d312 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(symbol-bar-8 ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name316 = "aggycal-types.symbol-bar-9ToString"
d316 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(symbol-bar-9 ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name320 = "aggycal-types.twodigitToString"
d320 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(twodigit ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name324 = "aggycal-types.wordsToString"
d324 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(words ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name328 = "aggycal-types.words-bar-22ToString"
d328 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(words-bar-22 ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name332 = "aggycal-types.words-plus-23ToString"
d332 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(words-plus-23 ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name336 = "aggycal-types.words-range-21ToString"
d336 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(words-range-21 ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name340 = "aggycal-types.yearToString"
d340 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(year ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name344 = "aggycal-types.dateToString"
d344 v0
  = case coe v0 of
      C76 v1 v2 v3
        -> coe
             MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(AmericanDate")
             (coe
                MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                (coe
                   MAlonzo.Code.Qstring.d12 (coe d248 v1)
                   (coe
                      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                      (coe
                         MAlonzo.Code.Qstring.d12 (coe d228 v2)
                         (coe
                            MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                            (coe
                               MAlonzo.Code.Qstring.d12 (coe d340 v3)
                               (coe Data.Text.pack ")")))))))
      C78 v1 v2 v3
        -> coe
             MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(GlobalDate")
             (coe
                MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                (coe
                   MAlonzo.Code.Qstring.d12 (coe d340 v1)
                   (coe
                      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                      (coe
                         MAlonzo.Code.Qstring.d12 (coe d248 v2)
                         (coe
                            MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                            (coe
                               MAlonzo.Code.Qstring.d12 (coe d228 v3)
                               (coe Data.Text.pack ")")))))))
      _ -> coe MAlonzo.RTE.mazUnreachableError
name346 = "aggycal-types.descriptionToString"
d346 v0
  = case coe v0 of
      C80 v1
        -> coe
             MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(Description")
             (coe
                MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                (coe
                   MAlonzo.Code.Qstring.d12 (coe d324 v1) (coe Data.Text.pack ")")))
      C82
        -> coe
             MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "NoDescription")
             (coe Data.Text.pack "")
      _ -> coe MAlonzo.RTE.mazUnreachableError
name348 = "aggycal-types.evtnameToString"
d348 v0
  = case coe v0 of
      C84 v1
        -> coe
             MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(EventName")
             (coe
                MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                (coe
                   MAlonzo.Code.Qstring.d12 (coe d324 v1) (coe Data.Text.pack ")")))
      _ -> coe MAlonzo.RTE.mazUnreachableError
name350 = "aggycal-types.strtToString"
d350 v0
  = case coe v0 of
      C86 v1 v2 v3 v4
        -> coe
             MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(Strt")
             (coe
                MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                (coe
                   MAlonzo.Code.Qstring.d12 (coe d348 v1)
                   (coe
                      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                      (coe
                         MAlonzo.Code.Qstring.d12 (coe d344 v2)
                         (coe
                            MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                            (coe
                               MAlonzo.Code.Qstring.d12 (coe d354 v3)
                               (coe
                                  MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                                  (coe
                                     MAlonzo.Code.Qstring.d12 (coe d346 v4)
                                     (coe Data.Text.pack ")")))))))))
      _ -> coe MAlonzo.RTE.mazUnreachableError
name352 = "aggycal-types.timeToString"
d352 v0
  = case coe v0 of
      C88 v1 v2
        -> coe
             MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(MilitaryTime")
             (coe
                MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                (coe
                   MAlonzo.Code.Qstring.d12 (coe d240 v1)
                   (coe
                      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                      (coe
                         MAlonzo.Code.Qstring.d12 (coe d244 v2) (coe Data.Text.pack ")")))))
      C90 v1 v2 v3
        -> coe
             MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(RegTime")
             (coe
                MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                (coe
                   MAlonzo.Code.Qstring.d12 (coe d240 v1)
                   (coe
                      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                      (coe
                         MAlonzo.Code.Qstring.d12 (coe d244 v2)
                         (coe
                            MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                            (coe
                               MAlonzo.Code.Qstring.d12 (coe d356 v3)
                               (coe Data.Text.pack ")")))))))
      _ -> coe MAlonzo.RTE.mazUnreachableError
name354 = "aggycal-types.timerangeToString"
d354 v0
  = case coe v0 of
      C92
        -> coe
             MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "AllDayRange")
             (coe Data.Text.pack "")
      C94 v1 v2
        -> coe
             MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(TimeRange")
             (coe
                MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                (coe
                   MAlonzo.Code.Qstring.d12 (coe d352 v1)
                   (coe
                      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                      (coe
                         MAlonzo.Code.Qstring.d12 (coe d352 v2) (coe Data.Text.pack ")")))))
      _ -> coe MAlonzo.RTE.mazUnreachableError
name356 = "aggycal-types.whichmToString"
d356 v0
  = case coe v0 of
      C96
        -> coe
             MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "AM")
             (coe Data.Text.pack "")
      C98
        -> coe
             MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "PM")
             (coe Data.Text.pack "")
      _ -> coe MAlonzo.RTE.mazUnreachableError
name396 = "aggycal-types.ParseTreeToString"
d396 v0
  = case coe v0 of
      C102 v1 -> coe d344 v1
      C104 v1 -> coe d346 v1
      C106 v1 -> coe d348 v1
      C108 v1 -> coe d350 v1
      C110 v1 -> coe d352 v1
      C112 v1 -> coe d354 v1
      C114 v1 -> coe d356 v1
      C116 v1 -> coe d224 v1
      C118 v1 -> coe d228 v1
      C120 v1 -> coe d232 v1
      C122 v1 -> coe d236 v1
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
      C176 -> coe Data.Text.pack "[allday]"
      C178 -> coe Data.Text.pack "[alldayA]"
      C180 -> coe Data.Text.pack "[alldayA-bar-31]"
      C182 -> coe Data.Text.pack "[alldayA-bar-32]"
      C184 -> coe Data.Text.pack "[alldayD]"
      C186 -> coe Data.Text.pack "[alldayD-bar-33]"
      C188 -> coe Data.Text.pack "[alldayD-bar-34]"
      C190 -> coe Data.Text.pack "[am]"
      C192 -> coe Data.Text.pack "[am-bar-28]"
      C194 -> coe Data.Text.pack "[aws]"
      C196 -> coe Data.Text.pack "[aws-bar-1]"
      C198 -> coe Data.Text.pack "[aws-bar-2]"
      C200 -> coe Data.Text.pack "[datesep]"
      C202 -> coe Data.Text.pack "[datesep-bar-25]"
      C204 -> coe Data.Text.pack "[datesep-bar-26]"
      C206 -> coe Data.Text.pack "[datesep-bar-27]"
      C208 -> coe Data.Text.pack "[ows]"
      C210 -> coe Data.Text.pack "[ows-star-4]"
      C212 -> coe Data.Text.pack "[pm]"
      C214 -> coe Data.Text.pack "[pm-bar-29]"
      C216 -> coe Data.Text.pack "[timesep]"
      C218 -> coe Data.Text.pack "[timesep-bar-30]"
      C220 -> coe Data.Text.pack "[ws]"
      C222 -> coe Data.Text.pack "[ws-plus-3]"
      _ -> coe MAlonzo.RTE.mazUnreachableError
name474 = "aggycal-types.norm-whichm"
d474 v0 = coe v0
name478 = "aggycal-types.norm-timerange"
d478 v0 = coe v0
name482 = "aggycal-types.norm-time"
d482 v0 = coe v0
name486 = "aggycal-types.norm-strt"
d486 v0 = coe v0
name490 = "aggycal-types.norm-posinfo"
d490 v0 = coe v0
name494 = "aggycal-types.norm-evtname"
d494 v0 = coe v0
name498 = "aggycal-types.norm-description"
d498 v0 = coe v0
name502 = "aggycal-types.norm-date"
d502 v0 = coe v0
name520 = "aggycal-types.isParseTree"
d520 = erased
name528 = "aggycal-types.ptr"
d528 = coe MAlonzo.Code.QparseZ45Ztree.C1 d396