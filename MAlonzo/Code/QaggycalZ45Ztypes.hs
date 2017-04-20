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
name4 = "aggycal-types.datesep"
d4 = erased
name6 = "aggycal-types.datesep-bar-11"
d6 = erased
name8 = "aggycal-types.datesep-bar-12"
d8 = erased
name10 = "aggycal-types.datesep-bar-13"
d10 = erased
name12 = "aggycal-types.day"
d12 = erased
name14 = "aggycal-types.hour"
d14 = erased
name16 = "aggycal-types.id"
d16 = erased
name18 = "aggycal-types.id-bar-6"
d18 = erased
name20 = "aggycal-types.id-bar-7"
d20 = erased
name22 = "aggycal-types.id-bar-8"
d22 = erased
name24 = "aggycal-types.id-plus-9"
d24 = erased
name26 = "aggycal-types.id-range-5"
d26 = erased
name28 = "aggycal-types.minute"
d28 = erased
name30 = "aggycal-types.month"
d30 = erased
name32 = "aggycal-types.whichm"
d32 = erased
name34 = "aggycal-types.whichm-bar-14"
d34 = erased
name36 = "aggycal-types.whichm-bar-15"
d36 = erased
name38 = "aggycal-types.whichm-bar-16"
d38 = erased
name40 = "aggycal-types.year"
d40 = erased
name42 = "aggycal-types.date"
d42 = ()
data T42 a0 a1 a2 a3 a4 = C50 a0 a1 a2 a3 a4 | C52 a0 a1 a2 a3 a4
name44 = "aggycal-types.evtname"
d44 = ()
newtype T44 a0 = C54 a0
name46 = "aggycal-types.strt"
d46 = ()
data T46 a0 a1 a2 = C56 a0 a1 a2
name48 = "aggycal-types.timerange"
d48 = ()
data T48 a0 a1 a2 a3 a4 a5
  = C58 | C60 a0 a1 a2 a3 | C62 a0 a1 a2 a3 a4 a5
name64 = "aggycal-types.ParseTreeT"
d64 = ()
data T64 a0
  = C66 a0 | C68 a0 | C70 a0 | C72 a0 | C74 a0 | C76 a0 | C78 a0 |
    C80 a0 | C82 a0 | C84 a0 | C86 a0 | C88 a0 | C90 a0 | C92 a0 |
    C94 a0 | C96 a0 | C98 a0 | C100 a0 | C102 a0 | C104 a0 | C106 a0 |
    C108 a0 | C110 a0 | C112 a0 | C114 | C116 | C118 | C120 | C122 |
    C124 | C126 | C128 | C130 | C132 | C134 | C136 | C138 | C140 |
    C142 | C144 | C146 | C148 | C150
name152 = "aggycal-types.posinfoToString"
d152 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(posinfo ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name156 = "aggycal-types.datesepToString"
d156 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(datesep ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name160 = "aggycal-types.datesep-bar-11ToString"
d160 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(datesep-bar-11 ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name164 = "aggycal-types.datesep-bar-12ToString"
d164 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(datesep-bar-12 ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name168 = "aggycal-types.datesep-bar-13ToString"
d168 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(datesep-bar-13 ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name172 = "aggycal-types.dayToString"
d172 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(day ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name176 = "aggycal-types.hourToString"
d176 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(hour ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name180 = "aggycal-types.idToString"
d180 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(id ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name184 = "aggycal-types.id-bar-6ToString"
d184 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(id-bar-6 ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name188 = "aggycal-types.id-bar-7ToString"
d188 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(id-bar-7 ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name192 = "aggycal-types.id-bar-8ToString"
d192 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(id-bar-8 ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name196 = "aggycal-types.id-plus-9ToString"
d196 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(id-plus-9 ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name200 = "aggycal-types.id-range-5ToString"
d200 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(id-range-5 ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name204 = "aggycal-types.minuteToString"
d204 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(minute ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name208 = "aggycal-types.monthToString"
d208 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(month ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name212 = "aggycal-types.whichmToString"
d212 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(whichm ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name216 = "aggycal-types.whichm-bar-14ToString"
d216 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(whichm-bar-14 ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name220 = "aggycal-types.whichm-bar-15ToString"
d220 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(whichm-bar-15 ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name224 = "aggycal-types.whichm-bar-16ToString"
d224 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(whichm-bar-16 ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name228 = "aggycal-types.yearToString"
d228 v0
  = coe
      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(year ")
      (coe MAlonzo.Code.Qstring.d12 v0 (coe Data.Text.pack ")"))
name232 = "aggycal-types.dateToString"
d232 v0
  = case coe v0 of
      C50 v1 v2 v3 v4 v5
        -> coe
             MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(AmericanDate")
             (coe
                MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                (coe
                   MAlonzo.Code.Qstring.d12 (coe d208 v1)
                   (coe
                      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                      (coe
                         MAlonzo.Code.Qstring.d12 (coe d156 v2)
                         (coe
                            MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                            (coe
                               MAlonzo.Code.Qstring.d12 (coe d172 v3)
                               (coe
                                  MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                                  (coe
                                     MAlonzo.Code.Qstring.d12 (coe d156 v4)
                                     (coe
                                        MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                                        (coe
                                           MAlonzo.Code.Qstring.d12 (coe d228 v5)
                                           (coe Data.Text.pack ")")))))))))))
      C52 v1 v2 v3 v4 v5
        -> coe
             MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(GlobalDate")
             (coe
                MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                (coe
                   MAlonzo.Code.Qstring.d12 (coe d228 v1)
                   (coe
                      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                      (coe
                         MAlonzo.Code.Qstring.d12 (coe d156 v2)
                         (coe
                            MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                            (coe
                               MAlonzo.Code.Qstring.d12 (coe d208 v3)
                               (coe
                                  MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                                  (coe
                                     MAlonzo.Code.Qstring.d12 (coe d156 v4)
                                     (coe
                                        MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                                        (coe
                                           MAlonzo.Code.Qstring.d12 (coe d172 v5)
                                           (coe Data.Text.pack ")")))))))))))
      _ -> coe MAlonzo.RTE.mazUnreachableError
name234 = "aggycal-types.evtnameToString"
d234 v0
  = case coe v0 of
      C54 v1
        -> coe
             MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(EventName")
             (coe
                MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                (coe
                   MAlonzo.Code.Qstring.d12 (coe d180 v1) (coe Data.Text.pack ")")))
      _ -> coe MAlonzo.RTE.mazUnreachableError
name236 = "aggycal-types.strtToString"
d236 v0
  = case coe v0 of
      C56 v1 v2 v3
        -> coe
             MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(Strt")
             (coe
                MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                (coe
                   MAlonzo.Code.Qstring.d12 (coe d234 v1)
                   (coe
                      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                      (coe
                         MAlonzo.Code.Qstring.d12 (coe d232 v2)
                         (coe
                            MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                            (coe
                               MAlonzo.Code.Qstring.d12 (coe d238 v3)
                               (coe Data.Text.pack ")")))))))
      _ -> coe MAlonzo.RTE.mazUnreachableError
name238 = "aggycal-types.timerangeToString"
d238 v0
  = case coe v0 of
      C58
        -> coe
             MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "AllDay")
             (coe Data.Text.pack "")
      C60 v1 v2 v3 v4
        -> coe
             MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(MilitaryTime")
             (coe
                MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                (coe
                   MAlonzo.Code.Qstring.d12 (coe d176 v1)
                   (coe
                      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                      (coe
                         MAlonzo.Code.Qstring.d12 (coe d204 v2)
                         (coe
                            MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                            (coe
                               MAlonzo.Code.Qstring.d12 (coe d176 v3)
                               (coe
                                  MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                                  (coe
                                     MAlonzo.Code.Qstring.d12 (coe d204 v4)
                                     (coe Data.Text.pack ")")))))))))
      C62 v1 v2 v3 v4 v5 v6
        -> coe
             MAlonzo.Code.Qstring.d12 (coe Data.Text.pack "(RegTime")
             (coe
                MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                (coe
                   MAlonzo.Code.Qstring.d12 (coe d176 v1)
                   (coe
                      MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                      (coe
                         MAlonzo.Code.Qstring.d12 (coe d204 v2)
                         (coe
                            MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                            (coe
                               MAlonzo.Code.Qstring.d12 (coe d212 v3)
                               (coe
                                  MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                                  (coe
                                     MAlonzo.Code.Qstring.d12 (coe d176 v4)
                                     (coe
                                        MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                                        (coe
                                           MAlonzo.Code.Qstring.d12 (coe d204 v5)
                                           (coe
                                              MAlonzo.Code.Qstring.d12 (coe Data.Text.pack " ")
                                              (coe
                                                 MAlonzo.Code.Qstring.d12 (coe d212 v6)
                                                 (coe Data.Text.pack ")")))))))))))))
      _ -> coe MAlonzo.RTE.mazUnreachableError
name288 = "aggycal-types.ParseTreeToString"
d288 v0
  = case coe v0 of
      C66 v1 -> coe d232 v1
      C68 v1 -> coe d234 v1
      C70 v1 -> coe d236 v1
      C72 v1 -> coe d238 v1
      C74 v1 -> coe d152 v1
      C76 v1 -> coe d156 v1
      C78 v1 -> coe d160 v1
      C80 v1 -> coe d164 v1
      C82 v1 -> coe d168 v1
      C84 v1 -> coe d172 v1
      C86 v1 -> coe d176 v1
      C88 v1 -> coe d180 v1
      C90 v1 -> coe d184 v1
      C92 v1 -> coe d188 v1
      C94 v1 -> coe d192 v1
      C96 v1 -> coe d196 v1
      C98 v1 -> coe d200 v1
      C100 v1 -> coe d204 v1
      C102 v1 -> coe d208 v1
      C104 v1 -> coe d212 v1
      C106 v1 -> coe d216 v1
      C108 v1 -> coe d220 v1
      C110 v1 -> coe d224 v1
      C112 v1 -> coe d228 v1
      C114 -> coe Data.Text.pack "[allday]"
      C116 -> coe Data.Text.pack "[alldayA]"
      C118 -> coe Data.Text.pack "[alldayA-bar-18]"
      C120 -> coe Data.Text.pack "[alldayA-bar-19]"
      C122 -> coe Data.Text.pack "[alldayD]"
      C124 -> coe Data.Text.pack "[alldayD-bar-20]"
      C126 -> coe Data.Text.pack "[alldayD-bar-21]"
      C128 -> coe Data.Text.pack "[aws]"
      C130 -> coe Data.Text.pack "[aws-bar-1]"
      C132 -> coe Data.Text.pack "[aws-bar-2]"
      C134 -> coe Data.Text.pack "[digit]"
      C136 -> coe Data.Text.pack "[digit-range-10]"
      C138 -> coe Data.Text.pack "[ows]"
      C140 -> coe Data.Text.pack "[ows-star-4]"
      C142 -> coe Data.Text.pack "[timesep]"
      C144 -> coe Data.Text.pack "[timesep-bar-17]"
      C146 -> coe Data.Text.pack "[twodigit]"
      C148 -> coe Data.Text.pack "[ws]"
      C150 -> coe Data.Text.pack "[ws-plus-3]"
      _ -> coe MAlonzo.RTE.mazUnreachableError
name340 = "aggycal-types.norm-timerange"
d340 v0 = coe v0
name344 = "aggycal-types.norm-strt"
d344 v0 = coe v0
name348 = "aggycal-types.norm-posinfo"
d348 v0 = coe v0
name352 = "aggycal-types.norm-evtname"
d352 v0 = coe v0
name356 = "aggycal-types.norm-date"
d356 v0 = coe v0
name368 = "aggycal-types.isParseTree"
d368 = erased
name376 = "aggycal-types.ptr"
d376 = coe MAlonzo.Code.QparseZ45Ztree.C1 d288