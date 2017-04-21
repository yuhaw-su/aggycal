----------------------------------------------------------------------------------
-- Types for parse trees
----------------------------------------------------------------------------------

module aggycal-types where

open import lib
open import parse-tree

posinfo = string
day = string
digit = string
digit-range-24 = string
hour = string
minute = string
month = string
symbol = string
symbol-bar-10 = string
symbol-bar-11 = string
symbol-bar-12 = string
symbol-bar-13 = string
symbol-bar-14 = string
symbol-bar-15 = string
symbol-bar-16 = string
symbol-bar-17 = string
symbol-bar-18 = string
symbol-bar-19 = string
symbol-bar-20 = string
symbol-bar-5 = string
symbol-bar-6 = string
symbol-bar-7 = string
symbol-bar-8 = string
symbol-bar-9 = string
twodigit = string
words = string
words-bar-22 = string
words-plus-23 = string
words-range-21 = string
year = string

mutual

  data date : Set where 
    AmericanDate : month → day → year → date
    GlobalDate : year → month → day → date

  data description : Set where 
    Description : words → description
    NoDescription : description

  data evtname : Set where 
    EventName : words → evtname

  data strt : Set where 
    Strt : evtname → date → timerange → description → strt

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
  parsed-description : description → ParseTreeT
  parsed-evtname : evtname → ParseTreeT
  parsed-strt : strt → ParseTreeT
  parsed-time : time → ParseTreeT
  parsed-timerange : timerange → ParseTreeT
  parsed-whichm : whichm → ParseTreeT
  parsed-posinfo : posinfo → ParseTreeT
  parsed-day : day → ParseTreeT
  parsed-digit : digit → ParseTreeT
  parsed-digit-range-24 : digit-range-24 → ParseTreeT
  parsed-hour : hour → ParseTreeT
  parsed-minute : minute → ParseTreeT
  parsed-month : month → ParseTreeT
  parsed-symbol : symbol → ParseTreeT
  parsed-symbol-bar-10 : symbol-bar-10 → ParseTreeT
  parsed-symbol-bar-11 : symbol-bar-11 → ParseTreeT
  parsed-symbol-bar-12 : symbol-bar-12 → ParseTreeT
  parsed-symbol-bar-13 : symbol-bar-13 → ParseTreeT
  parsed-symbol-bar-14 : symbol-bar-14 → ParseTreeT
  parsed-symbol-bar-15 : symbol-bar-15 → ParseTreeT
  parsed-symbol-bar-16 : symbol-bar-16 → ParseTreeT
  parsed-symbol-bar-17 : symbol-bar-17 → ParseTreeT
  parsed-symbol-bar-18 : symbol-bar-18 → ParseTreeT
  parsed-symbol-bar-19 : symbol-bar-19 → ParseTreeT
  parsed-symbol-bar-20 : symbol-bar-20 → ParseTreeT
  parsed-symbol-bar-5 : symbol-bar-5 → ParseTreeT
  parsed-symbol-bar-6 : symbol-bar-6 → ParseTreeT
  parsed-symbol-bar-7 : symbol-bar-7 → ParseTreeT
  parsed-symbol-bar-8 : symbol-bar-8 → ParseTreeT
  parsed-symbol-bar-9 : symbol-bar-9 → ParseTreeT
  parsed-twodigit : twodigit → ParseTreeT
  parsed-words : words → ParseTreeT
  parsed-words-bar-22 : words-bar-22 → ParseTreeT
  parsed-words-plus-23 : words-plus-23 → ParseTreeT
  parsed-words-range-21 : words-range-21 → ParseTreeT
  parsed-year : year → ParseTreeT
  parsed-allday : ParseTreeT
  parsed-alldayA : ParseTreeT
  parsed-alldayA-bar-31 : ParseTreeT
  parsed-alldayA-bar-32 : ParseTreeT
  parsed-alldayD : ParseTreeT
  parsed-alldayD-bar-33 : ParseTreeT
  parsed-alldayD-bar-34 : ParseTreeT
  parsed-am : ParseTreeT
  parsed-am-bar-28 : ParseTreeT
  parsed-aws : ParseTreeT
  parsed-aws-bar-1 : ParseTreeT
  parsed-aws-bar-2 : ParseTreeT
  parsed-datesep : ParseTreeT
  parsed-datesep-bar-25 : ParseTreeT
  parsed-datesep-bar-26 : ParseTreeT
  parsed-datesep-bar-27 : ParseTreeT
  parsed-ows : ParseTreeT
  parsed-ows-star-4 : ParseTreeT
  parsed-pm : ParseTreeT
  parsed-pm-bar-29 : ParseTreeT
  parsed-timesep : ParseTreeT
  parsed-timesep-bar-30 : ParseTreeT
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
digit-range-24ToString : digit-range-24 → string
digit-range-24ToString x = "(digit-range-24 " ^ x ^ ")"
hourToString : hour → string
hourToString x = "(hour " ^ x ^ ")"
minuteToString : minute → string
minuteToString x = "(minute " ^ x ^ ")"
monthToString : month → string
monthToString x = "(month " ^ x ^ ")"
symbolToString : symbol → string
symbolToString x = "(symbol " ^ x ^ ")"
symbol-bar-10ToString : symbol-bar-10 → string
symbol-bar-10ToString x = "(symbol-bar-10 " ^ x ^ ")"
symbol-bar-11ToString : symbol-bar-11 → string
symbol-bar-11ToString x = "(symbol-bar-11 " ^ x ^ ")"
symbol-bar-12ToString : symbol-bar-12 → string
symbol-bar-12ToString x = "(symbol-bar-12 " ^ x ^ ")"
symbol-bar-13ToString : symbol-bar-13 → string
symbol-bar-13ToString x = "(symbol-bar-13 " ^ x ^ ")"
symbol-bar-14ToString : symbol-bar-14 → string
symbol-bar-14ToString x = "(symbol-bar-14 " ^ x ^ ")"
symbol-bar-15ToString : symbol-bar-15 → string
symbol-bar-15ToString x = "(symbol-bar-15 " ^ x ^ ")"
symbol-bar-16ToString : symbol-bar-16 → string
symbol-bar-16ToString x = "(symbol-bar-16 " ^ x ^ ")"
symbol-bar-17ToString : symbol-bar-17 → string
symbol-bar-17ToString x = "(symbol-bar-17 " ^ x ^ ")"
symbol-bar-18ToString : symbol-bar-18 → string
symbol-bar-18ToString x = "(symbol-bar-18 " ^ x ^ ")"
symbol-bar-19ToString : symbol-bar-19 → string
symbol-bar-19ToString x = "(symbol-bar-19 " ^ x ^ ")"
symbol-bar-20ToString : symbol-bar-20 → string
symbol-bar-20ToString x = "(symbol-bar-20 " ^ x ^ ")"
symbol-bar-5ToString : symbol-bar-5 → string
symbol-bar-5ToString x = "(symbol-bar-5 " ^ x ^ ")"
symbol-bar-6ToString : symbol-bar-6 → string
symbol-bar-6ToString x = "(symbol-bar-6 " ^ x ^ ")"
symbol-bar-7ToString : symbol-bar-7 → string
symbol-bar-7ToString x = "(symbol-bar-7 " ^ x ^ ")"
symbol-bar-8ToString : symbol-bar-8 → string
symbol-bar-8ToString x = "(symbol-bar-8 " ^ x ^ ")"
symbol-bar-9ToString : symbol-bar-9 → string
symbol-bar-9ToString x = "(symbol-bar-9 " ^ x ^ ")"
twodigitToString : twodigit → string
twodigitToString x = "(twodigit " ^ x ^ ")"
wordsToString : words → string
wordsToString x = "(words " ^ x ^ ")"
words-bar-22ToString : words-bar-22 → string
words-bar-22ToString x = "(words-bar-22 " ^ x ^ ")"
words-plus-23ToString : words-plus-23 → string
words-plus-23ToString x = "(words-plus-23 " ^ x ^ ")"
words-range-21ToString : words-range-21 → string
words-range-21ToString x = "(words-range-21 " ^ x ^ ")"
yearToString : year → string
yearToString x = "(year " ^ x ^ ")"

mutual
  dateToString : date → string
  dateToString (AmericanDate x0 x1 x2) = "(AmericanDate" ^ " " ^ (monthToString x0) ^ " " ^ (dayToString x1) ^ " " ^ (yearToString x2) ^ ")"
  dateToString (GlobalDate x0 x1 x2) = "(GlobalDate" ^ " " ^ (yearToString x0) ^ " " ^ (monthToString x1) ^ " " ^ (dayToString x2) ^ ")"

  descriptionToString : description → string
  descriptionToString (Description x0) = "(Description" ^ " " ^ (wordsToString x0) ^ ")"
  descriptionToString (NoDescription) = "NoDescription" ^ ""

  evtnameToString : evtname → string
  evtnameToString (EventName x0) = "(EventName" ^ " " ^ (wordsToString x0) ^ ")"

  strtToString : strt → string
  strtToString (Strt x0 x1 x2 x3) = "(Strt" ^ " " ^ (evtnameToString x0) ^ " " ^ (dateToString x1) ^ " " ^ (timerangeToString x2) ^ " " ^ (descriptionToString x3) ^ ")"

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
ParseTreeToString (parsed-description t) = descriptionToString t
ParseTreeToString (parsed-evtname t) = evtnameToString t
ParseTreeToString (parsed-strt t) = strtToString t
ParseTreeToString (parsed-time t) = timeToString t
ParseTreeToString (parsed-timerange t) = timerangeToString t
ParseTreeToString (parsed-whichm t) = whichmToString t
ParseTreeToString (parsed-posinfo t) = posinfoToString t
ParseTreeToString (parsed-day t) = dayToString t
ParseTreeToString (parsed-digit t) = digitToString t
ParseTreeToString (parsed-digit-range-24 t) = digit-range-24ToString t
ParseTreeToString (parsed-hour t) = hourToString t
ParseTreeToString (parsed-minute t) = minuteToString t
ParseTreeToString (parsed-month t) = monthToString t
ParseTreeToString (parsed-symbol t) = symbolToString t
ParseTreeToString (parsed-symbol-bar-10 t) = symbol-bar-10ToString t
ParseTreeToString (parsed-symbol-bar-11 t) = symbol-bar-11ToString t
ParseTreeToString (parsed-symbol-bar-12 t) = symbol-bar-12ToString t
ParseTreeToString (parsed-symbol-bar-13 t) = symbol-bar-13ToString t
ParseTreeToString (parsed-symbol-bar-14 t) = symbol-bar-14ToString t
ParseTreeToString (parsed-symbol-bar-15 t) = symbol-bar-15ToString t
ParseTreeToString (parsed-symbol-bar-16 t) = symbol-bar-16ToString t
ParseTreeToString (parsed-symbol-bar-17 t) = symbol-bar-17ToString t
ParseTreeToString (parsed-symbol-bar-18 t) = symbol-bar-18ToString t
ParseTreeToString (parsed-symbol-bar-19 t) = symbol-bar-19ToString t
ParseTreeToString (parsed-symbol-bar-20 t) = symbol-bar-20ToString t
ParseTreeToString (parsed-symbol-bar-5 t) = symbol-bar-5ToString t
ParseTreeToString (parsed-symbol-bar-6 t) = symbol-bar-6ToString t
ParseTreeToString (parsed-symbol-bar-7 t) = symbol-bar-7ToString t
ParseTreeToString (parsed-symbol-bar-8 t) = symbol-bar-8ToString t
ParseTreeToString (parsed-symbol-bar-9 t) = symbol-bar-9ToString t
ParseTreeToString (parsed-twodigit t) = twodigitToString t
ParseTreeToString (parsed-words t) = wordsToString t
ParseTreeToString (parsed-words-bar-22 t) = words-bar-22ToString t
ParseTreeToString (parsed-words-plus-23 t) = words-plus-23ToString t
ParseTreeToString (parsed-words-range-21 t) = words-range-21ToString t
ParseTreeToString (parsed-year t) = yearToString t
ParseTreeToString parsed-allday = "[allday]"
ParseTreeToString parsed-alldayA = "[alldayA]"
ParseTreeToString parsed-alldayA-bar-31 = "[alldayA-bar-31]"
ParseTreeToString parsed-alldayA-bar-32 = "[alldayA-bar-32]"
ParseTreeToString parsed-alldayD = "[alldayD]"
ParseTreeToString parsed-alldayD-bar-33 = "[alldayD-bar-33]"
ParseTreeToString parsed-alldayD-bar-34 = "[alldayD-bar-34]"
ParseTreeToString parsed-am = "[am]"
ParseTreeToString parsed-am-bar-28 = "[am-bar-28]"
ParseTreeToString parsed-aws = "[aws]"
ParseTreeToString parsed-aws-bar-1 = "[aws-bar-1]"
ParseTreeToString parsed-aws-bar-2 = "[aws-bar-2]"
ParseTreeToString parsed-datesep = "[datesep]"
ParseTreeToString parsed-datesep-bar-25 = "[datesep-bar-25]"
ParseTreeToString parsed-datesep-bar-26 = "[datesep-bar-26]"
ParseTreeToString parsed-datesep-bar-27 = "[datesep-bar-27]"
ParseTreeToString parsed-ows = "[ows]"
ParseTreeToString parsed-ows-star-4 = "[ows-star-4]"
ParseTreeToString parsed-pm = "[pm]"
ParseTreeToString parsed-pm-bar-29 = "[pm-bar-29]"
ParseTreeToString parsed-timesep = "[timesep]"
ParseTreeToString parsed-timesep-bar-30 = "[timesep-bar-30]"
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
  norm-description : (x : description) → description
  norm-description x = x

  {-# TERMINATING #-}
  norm-date : (x : date) → date
  norm-date x = x

isParseTree : ParseTreeT → 𝕃 char → string → Set
isParseTree p l s = ⊤ {- this will be ignored since we are using simply typed runs -}

ptr : ParseTreeRec
ptr = record { ParseTreeT = ParseTreeT ; isParseTree = isParseTree ; ParseTreeToString = ParseTreeToString }

