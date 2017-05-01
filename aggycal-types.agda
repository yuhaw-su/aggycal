----------------------------------------------------------------------------------
-- Types for parse trees
----------------------------------------------------------------------------------

module aggycal-types where

open import lib
open import parse-tree

posinfo = string
day = string
digit = string
digit-range-28 = string
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
symbol-bar-21 = string
symbol-bar-22 = string
symbol-bar-23 = string
symbol-bar-24 = string
symbol-bar-5 = string
symbol-bar-6 = string
symbol-bar-7 = string
symbol-bar-8 = string
symbol-bar-9 = string
twodigit = string
words = string
words-bar-26 = string
words-plus-27 = string
words-range-25 = string
year = string

mutual

  data daterange : Set where 
    AmericanDate : month → day → year → daterange
    AmericanDateRange : month → day → year → month → day → year → daterange
    GlobalDate : year → month → day → daterange
    GlobalDateRange : year → month → day → year → month → day → daterange

  data other : Set where 
    Description : words → other → other
    OtherNil : other

  data strt : Set where 
    Strt : words → daterange → timerange → other → strt

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
  parsed-daterange : daterange → ParseTreeT
  parsed-other : other → ParseTreeT
  parsed-strt : strt → ParseTreeT
  parsed-time : time → ParseTreeT
  parsed-timerange : timerange → ParseTreeT
  parsed-whichm : whichm → ParseTreeT
  parsed-posinfo : posinfo → ParseTreeT
  parsed-day : day → ParseTreeT
  parsed-digit : digit → ParseTreeT
  parsed-digit-range-28 : digit-range-28 → ParseTreeT
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
  parsed-symbol-bar-21 : symbol-bar-21 → ParseTreeT
  parsed-symbol-bar-22 : symbol-bar-22 → ParseTreeT
  parsed-symbol-bar-23 : symbol-bar-23 → ParseTreeT
  parsed-symbol-bar-24 : symbol-bar-24 → ParseTreeT
  parsed-symbol-bar-5 : symbol-bar-5 → ParseTreeT
  parsed-symbol-bar-6 : symbol-bar-6 → ParseTreeT
  parsed-symbol-bar-7 : symbol-bar-7 → ParseTreeT
  parsed-symbol-bar-8 : symbol-bar-8 → ParseTreeT
  parsed-symbol-bar-9 : symbol-bar-9 → ParseTreeT
  parsed-twodigit : twodigit → ParseTreeT
  parsed-words : words → ParseTreeT
  parsed-words-bar-26 : words-bar-26 → ParseTreeT
  parsed-words-plus-27 : words-plus-27 → ParseTreeT
  parsed-words-range-25 : words-range-25 → ParseTreeT
  parsed-year : year → ParseTreeT
  parsed-allday : ParseTreeT
  parsed-alldayA : ParseTreeT
  parsed-alldayA-bar-35 : ParseTreeT
  parsed-alldayA-bar-36 : ParseTreeT
  parsed-alldayD : ParseTreeT
  parsed-alldayD-bar-37 : ParseTreeT
  parsed-alldayD-bar-38 : ParseTreeT
  parsed-am : ParseTreeT
  parsed-am-bar-32 : ParseTreeT
  parsed-aws : ParseTreeT
  parsed-aws-bar-1 : ParseTreeT
  parsed-aws-bar-2 : ParseTreeT
  parsed-datesep : ParseTreeT
  parsed-datesep-bar-29 : ParseTreeT
  parsed-datesep-bar-30 : ParseTreeT
  parsed-datesep-bar-31 : ParseTreeT
  parsed-ows : ParseTreeT
  parsed-ows-star-4 : ParseTreeT
  parsed-pm : ParseTreeT
  parsed-pm-bar-33 : ParseTreeT
  parsed-sep : ParseTreeT
  parsed-sep-bar-34 : ParseTreeT
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
digit-range-28ToString : digit-range-28 → string
digit-range-28ToString x = "(digit-range-28 " ^ x ^ ")"
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
symbol-bar-21ToString : symbol-bar-21 → string
symbol-bar-21ToString x = "(symbol-bar-21 " ^ x ^ ")"
symbol-bar-22ToString : symbol-bar-22 → string
symbol-bar-22ToString x = "(symbol-bar-22 " ^ x ^ ")"
symbol-bar-23ToString : symbol-bar-23 → string
symbol-bar-23ToString x = "(symbol-bar-23 " ^ x ^ ")"
symbol-bar-24ToString : symbol-bar-24 → string
symbol-bar-24ToString x = "(symbol-bar-24 " ^ x ^ ")"
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
words-bar-26ToString : words-bar-26 → string
words-bar-26ToString x = "(words-bar-26 " ^ x ^ ")"
words-plus-27ToString : words-plus-27 → string
words-plus-27ToString x = "(words-plus-27 " ^ x ^ ")"
words-range-25ToString : words-range-25 → string
words-range-25ToString x = "(words-range-25 " ^ x ^ ")"
yearToString : year → string
yearToString x = "(year " ^ x ^ ")"

mutual
  daterangeToString : daterange → string
  daterangeToString (AmericanDate x0 x1 x2) = "(AmericanDate" ^ " " ^ (monthToString x0) ^ " " ^ (dayToString x1) ^ " " ^ (yearToString x2) ^ ")"
  daterangeToString (AmericanDateRange x0 x1 x2 x3 x4 x5) = "(AmericanDateRange" ^ " " ^ (monthToString x0) ^ " " ^ (dayToString x1) ^ " " ^ (yearToString x2) ^ " " ^ (monthToString x3) ^ " " ^ (dayToString x4) ^ " " ^ (yearToString x5) ^ ")"
  daterangeToString (GlobalDate x0 x1 x2) = "(GlobalDate" ^ " " ^ (yearToString x0) ^ " " ^ (monthToString x1) ^ " " ^ (dayToString x2) ^ ")"
  daterangeToString (GlobalDateRange x0 x1 x2 x3 x4 x5) = "(GlobalDateRange" ^ " " ^ (yearToString x0) ^ " " ^ (monthToString x1) ^ " " ^ (dayToString x2) ^ " " ^ (yearToString x3) ^ " " ^ (monthToString x4) ^ " " ^ (dayToString x5) ^ ")"

  otherToString : other → string
  otherToString (Description x0 x1) = "(Description" ^ " " ^ (wordsToString x0) ^ " " ^ (otherToString x1) ^ ")"
  otherToString (OtherNil) = "OtherNil" ^ ""

  strtToString : strt → string
  strtToString (Strt x0 x1 x2 x3) = "(Strt" ^ " " ^ (wordsToString x0) ^ " " ^ (daterangeToString x1) ^ " " ^ (timerangeToString x2) ^ " " ^ (otherToString x3) ^ ")"

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
ParseTreeToString (parsed-daterange t) = daterangeToString t
ParseTreeToString (parsed-other t) = otherToString t
ParseTreeToString (parsed-strt t) = strtToString t
ParseTreeToString (parsed-time t) = timeToString t
ParseTreeToString (parsed-timerange t) = timerangeToString t
ParseTreeToString (parsed-whichm t) = whichmToString t
ParseTreeToString (parsed-posinfo t) = posinfoToString t
ParseTreeToString (parsed-day t) = dayToString t
ParseTreeToString (parsed-digit t) = digitToString t
ParseTreeToString (parsed-digit-range-28 t) = digit-range-28ToString t
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
ParseTreeToString (parsed-symbol-bar-21 t) = symbol-bar-21ToString t
ParseTreeToString (parsed-symbol-bar-22 t) = symbol-bar-22ToString t
ParseTreeToString (parsed-symbol-bar-23 t) = symbol-bar-23ToString t
ParseTreeToString (parsed-symbol-bar-24 t) = symbol-bar-24ToString t
ParseTreeToString (parsed-symbol-bar-5 t) = symbol-bar-5ToString t
ParseTreeToString (parsed-symbol-bar-6 t) = symbol-bar-6ToString t
ParseTreeToString (parsed-symbol-bar-7 t) = symbol-bar-7ToString t
ParseTreeToString (parsed-symbol-bar-8 t) = symbol-bar-8ToString t
ParseTreeToString (parsed-symbol-bar-9 t) = symbol-bar-9ToString t
ParseTreeToString (parsed-twodigit t) = twodigitToString t
ParseTreeToString (parsed-words t) = wordsToString t
ParseTreeToString (parsed-words-bar-26 t) = words-bar-26ToString t
ParseTreeToString (parsed-words-plus-27 t) = words-plus-27ToString t
ParseTreeToString (parsed-words-range-25 t) = words-range-25ToString t
ParseTreeToString (parsed-year t) = yearToString t
ParseTreeToString parsed-allday = "[allday]"
ParseTreeToString parsed-alldayA = "[alldayA]"
ParseTreeToString parsed-alldayA-bar-35 = "[alldayA-bar-35]"
ParseTreeToString parsed-alldayA-bar-36 = "[alldayA-bar-36]"
ParseTreeToString parsed-alldayD = "[alldayD]"
ParseTreeToString parsed-alldayD-bar-37 = "[alldayD-bar-37]"
ParseTreeToString parsed-alldayD-bar-38 = "[alldayD-bar-38]"
ParseTreeToString parsed-am = "[am]"
ParseTreeToString parsed-am-bar-32 = "[am-bar-32]"
ParseTreeToString parsed-aws = "[aws]"
ParseTreeToString parsed-aws-bar-1 = "[aws-bar-1]"
ParseTreeToString parsed-aws-bar-2 = "[aws-bar-2]"
ParseTreeToString parsed-datesep = "[datesep]"
ParseTreeToString parsed-datesep-bar-29 = "[datesep-bar-29]"
ParseTreeToString parsed-datesep-bar-30 = "[datesep-bar-30]"
ParseTreeToString parsed-datesep-bar-31 = "[datesep-bar-31]"
ParseTreeToString parsed-ows = "[ows]"
ParseTreeToString parsed-ows-star-4 = "[ows-star-4]"
ParseTreeToString parsed-pm = "[pm]"
ParseTreeToString parsed-pm-bar-33 = "[pm-bar-33]"
ParseTreeToString parsed-sep = "[sep]"
ParseTreeToString parsed-sep-bar-34 = "[sep-bar-34]"
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
  norm-other : (x : other) → other
  norm-other x = x

  {-# TERMINATING #-}
  norm-daterange : (x : daterange) → daterange
  norm-daterange x = x

isParseTree : ParseTreeT → 𝕃 char → string → Set
isParseTree p l s = ⊤ {- this will be ignored since we are using simply typed runs -}

ptr : ParseTreeRec
ptr = record { ParseTreeT = ParseTreeT ; isParseTree = isParseTree ; ParseTreeToString = ParseTreeToString }

