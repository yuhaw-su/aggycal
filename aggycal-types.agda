----------------------------------------------------------------------------------
-- Types for parse trees
----------------------------------------------------------------------------------

module aggycal-types where

open import lib
open import parse-tree

posinfo = string
day = string
digit = string
digit-range-10 = string
hour = string
minute = string
month = string
twodigit = string
words = string
words-bar-6 = string
words-bar-7 = string
words-bar-8 = string
words-plus-9 = string
words-range-5 = string
year = string

mutual

  data date : Set where 
    AmericanDate : month → day → year → date
    GlobalDate : year → month → day → date

  data evtname : Set where 
    EventName : words → evtname

  data strt : Set where 
    Strt : evtname → date → timerange → strt

  data time : Set where 
    MilitaryTime : hour → minute → time
    RegTime : hour → minute → whichm → time

  data timerange : Set where 
    AllDayRange : timerange
    TimeRange : time → time → timerange

  data whichm : Set where 
    AM : whichm
    PM : whichm

-- embedded types:

data ParseTreeT : Set where
  parsed-date : date → ParseTreeT
  parsed-evtname : evtname → ParseTreeT
  parsed-strt : strt → ParseTreeT
  parsed-time : time → ParseTreeT
  parsed-timerange : timerange → ParseTreeT
  parsed-whichm : whichm → ParseTreeT
  parsed-posinfo : posinfo → ParseTreeT
  parsed-day : day → ParseTreeT
  parsed-digit : digit → ParseTreeT
  parsed-digit-range-10 : digit-range-10 → ParseTreeT
  parsed-hour : hour → ParseTreeT
  parsed-minute : minute → ParseTreeT
  parsed-month : month → ParseTreeT
  parsed-twodigit : twodigit → ParseTreeT
  parsed-words : words → ParseTreeT
  parsed-words-bar-6 : words-bar-6 → ParseTreeT
  parsed-words-bar-7 : words-bar-7 → ParseTreeT
  parsed-words-bar-8 : words-bar-8 → ParseTreeT
  parsed-words-plus-9 : words-plus-9 → ParseTreeT
  parsed-words-range-5 : words-range-5 → ParseTreeT
  parsed-year : year → ParseTreeT
  parsed-allday : ParseTreeT
  parsed-alldayA : ParseTreeT
  parsed-alldayA-bar-17 : ParseTreeT
  parsed-alldayA-bar-18 : ParseTreeT
  parsed-alldayD : ParseTreeT
  parsed-alldayD-bar-19 : ParseTreeT
  parsed-alldayD-bar-20 : ParseTreeT
  parsed-am : ParseTreeT
  parsed-am-bar-14 : ParseTreeT
  parsed-aws : ParseTreeT
  parsed-aws-bar-1 : ParseTreeT
  parsed-aws-bar-2 : ParseTreeT
  parsed-datesep : ParseTreeT
  parsed-datesep-bar-11 : ParseTreeT
  parsed-datesep-bar-12 : ParseTreeT
  parsed-datesep-bar-13 : ParseTreeT
  parsed-ows : ParseTreeT
  parsed-ows-star-4 : ParseTreeT
  parsed-pm : ParseTreeT
  parsed-pm-bar-15 : ParseTreeT
  parsed-timesep : ParseTreeT
  parsed-timesep-bar-16 : ParseTreeT
  parsed-ws : ParseTreeT
  parsed-ws-plus-3 : ParseTreeT

------------------------------------------
-- Parse tree printing functions
------------------------------------------

posinfoToString : posinfo → string
posinfoToString x = "(posinfo " ^ x ^ ")"
dayToString : day → string
dayToString x = "(day " ^ x ^ ")"
digitToString : digit → string
digitToString x = "(digit " ^ x ^ ")"
digit-range-10ToString : digit-range-10 → string
digit-range-10ToString x = "(digit-range-10 " ^ x ^ ")"
hourToString : hour → string
hourToString x = "(hour " ^ x ^ ")"
minuteToString : minute → string
minuteToString x = "(minute " ^ x ^ ")"
monthToString : month → string
monthToString x = "(month " ^ x ^ ")"
twodigitToString : twodigit → string
twodigitToString x = "(twodigit " ^ x ^ ")"
wordsToString : words → string
wordsToString x = "(words " ^ x ^ ")"
words-bar-6ToString : words-bar-6 → string
words-bar-6ToString x = "(words-bar-6 " ^ x ^ ")"
words-bar-7ToString : words-bar-7 → string
words-bar-7ToString x = "(words-bar-7 " ^ x ^ ")"
words-bar-8ToString : words-bar-8 → string
words-bar-8ToString x = "(words-bar-8 " ^ x ^ ")"
words-plus-9ToString : words-plus-9 → string
words-plus-9ToString x = "(words-plus-9 " ^ x ^ ")"
words-range-5ToString : words-range-5 → string
words-range-5ToString x = "(words-range-5 " ^ x ^ ")"
yearToString : year → string
yearToString x = "(year " ^ x ^ ")"

mutual
  dateToString : date → string
  dateToString (AmericanDate x0 x1 x2) = "(AmericanDate" ^ " " ^ (monthToString x0) ^ " " ^ (dayToString x1) ^ " " ^ (yearToString x2) ^ ")"
  dateToString (GlobalDate x0 x1 x2) = "(GlobalDate" ^ " " ^ (yearToString x0) ^ " " ^ (monthToString x1) ^ " " ^ (dayToString x2) ^ ")"

  evtnameToString : evtname → string
  evtnameToString (EventName x0) = "(EventName" ^ " " ^ (wordsToString x0) ^ ")"

  strtToString : strt → string
  strtToString (Strt x0 x1 x2) = "(Strt" ^ " " ^ (evtnameToString x0) ^ " " ^ (dateToString x1) ^ " " ^ (timerangeToString x2) ^ ")"

  timeToString : time → string
  timeToString (MilitaryTime x0 x1) = "(MilitaryTime" ^ " " ^ (hourToString x0) ^ " " ^ (minuteToString x1) ^ ")"
  timeToString (RegTime x0 x1 x2) = "(RegTime" ^ " " ^ (hourToString x0) ^ " " ^ (minuteToString x1) ^ " " ^ (whichmToString x2) ^ ")"

  timerangeToString : timerange → string
  timerangeToString (AllDayRange) = "AllDayRange" ^ ""
  timerangeToString (TimeRange x0 x1) = "(TimeRange" ^ " " ^ (timeToString x0) ^ " " ^ (timeToString x1) ^ ")"

  whichmToString : whichm → string
  whichmToString (AM) = "AM" ^ ""
  whichmToString (PM) = "PM" ^ ""

ParseTreeToString : ParseTreeT → string
ParseTreeToString (parsed-date t) = dateToString t
ParseTreeToString (parsed-evtname t) = evtnameToString t
ParseTreeToString (parsed-strt t) = strtToString t
ParseTreeToString (parsed-time t) = timeToString t
ParseTreeToString (parsed-timerange t) = timerangeToString t
ParseTreeToString (parsed-whichm t) = whichmToString t
ParseTreeToString (parsed-posinfo t) = posinfoToString t
ParseTreeToString (parsed-day t) = dayToString t
ParseTreeToString (parsed-digit t) = digitToString t
ParseTreeToString (parsed-digit-range-10 t) = digit-range-10ToString t
ParseTreeToString (parsed-hour t) = hourToString t
ParseTreeToString (parsed-minute t) = minuteToString t
ParseTreeToString (parsed-month t) = monthToString t
ParseTreeToString (parsed-twodigit t) = twodigitToString t
ParseTreeToString (parsed-words t) = wordsToString t
ParseTreeToString (parsed-words-bar-6 t) = words-bar-6ToString t
ParseTreeToString (parsed-words-bar-7 t) = words-bar-7ToString t
ParseTreeToString (parsed-words-bar-8 t) = words-bar-8ToString t
ParseTreeToString (parsed-words-plus-9 t) = words-plus-9ToString t
ParseTreeToString (parsed-words-range-5 t) = words-range-5ToString t
ParseTreeToString (parsed-year t) = yearToString t
ParseTreeToString parsed-allday = "[allday]"
ParseTreeToString parsed-alldayA = "[alldayA]"
ParseTreeToString parsed-alldayA-bar-17 = "[alldayA-bar-17]"
ParseTreeToString parsed-alldayA-bar-18 = "[alldayA-bar-18]"
ParseTreeToString parsed-alldayD = "[alldayD]"
ParseTreeToString parsed-alldayD-bar-19 = "[alldayD-bar-19]"
ParseTreeToString parsed-alldayD-bar-20 = "[alldayD-bar-20]"
ParseTreeToString parsed-am = "[am]"
ParseTreeToString parsed-am-bar-14 = "[am-bar-14]"
ParseTreeToString parsed-aws = "[aws]"
ParseTreeToString parsed-aws-bar-1 = "[aws-bar-1]"
ParseTreeToString parsed-aws-bar-2 = "[aws-bar-2]"
ParseTreeToString parsed-datesep = "[datesep]"
ParseTreeToString parsed-datesep-bar-11 = "[datesep-bar-11]"
ParseTreeToString parsed-datesep-bar-12 = "[datesep-bar-12]"
ParseTreeToString parsed-datesep-bar-13 = "[datesep-bar-13]"
ParseTreeToString parsed-ows = "[ows]"
ParseTreeToString parsed-ows-star-4 = "[ows-star-4]"
ParseTreeToString parsed-pm = "[pm]"
ParseTreeToString parsed-pm-bar-15 = "[pm-bar-15]"
ParseTreeToString parsed-timesep = "[timesep]"
ParseTreeToString parsed-timesep-bar-16 = "[timesep-bar-16]"
ParseTreeToString parsed-ws = "[ws]"
ParseTreeToString parsed-ws-plus-3 = "[ws-plus-3]"

------------------------------------------
-- Reorganizing rules
------------------------------------------

mutual

  {-# TERMINATING #-}
  norm-whichm : (x : whichm) → whichm
  norm-whichm x = x

  {-# TERMINATING #-}
  norm-timerange : (x : timerange) → timerange
  norm-timerange x = x

  {-# TERMINATING #-}
  norm-time : (x : time) → time
  norm-time x = x

  {-# TERMINATING #-}
  norm-strt : (x : strt) → strt
  norm-strt x = x

  {-# TERMINATING #-}
  norm-posinfo : (x : posinfo) → posinfo
  norm-posinfo x = x

  {-# TERMINATING #-}
  norm-evtname : (x : evtname) → evtname
  norm-evtname x = x

  {-# TERMINATING #-}
  norm-date : (x : date) → date
  norm-date x = x

isParseTree : ParseTreeT → 𝕃 char → string → Set
isParseTree p l s = ⊤ {- this will be ignored since we are using simply typed runs -}

ptr : ParseTreeRec
ptr = record { ParseTreeT = ParseTreeT ; isParseTree = isParseTree ; ParseTreeToString = ParseTreeToString }

