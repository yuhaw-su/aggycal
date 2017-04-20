----------------------------------------------------------------------------------
-- Types for parse trees
----------------------------------------------------------------------------------

module aggycal-types where

open import lib
open import parse-tree

posinfo = string
datesep = string
datesep-bar-11 = string
datesep-bar-12 = string
datesep-bar-13 = string
day = string
hour = string
id = string
id-bar-6 = string
id-bar-7 = string
id-bar-8 = string
id-plus-9 = string
id-range-5 = string
minute = string
month = string
whichm = string
whichm-bar-14 = string
whichm-bar-15 = string
whichm-bar-16 = string
year = string

mutual

  data date : Set where 
    AmericanDate : month → datesep → day → datesep → year → date
    GlobalDate : year → datesep → month → datesep → day → date

  data evtname : Set where 
    EventName : id → evtname

  data strt : Set where 
    Strt : evtname → date → timerange → strt

  data timerange : Set where 
    AllDay : timerange
    MilitaryTime : hour → minute → hour → minute → timerange
    RegTime : hour → minute → whichm → hour → minute → whichm → timerange

-- embedded types:

data ParseTreeT : Set where
  parsed-date : date → ParseTreeT
  parsed-evtname : evtname → ParseTreeT
  parsed-strt : strt → ParseTreeT
  parsed-timerange : timerange → ParseTreeT
  parsed-posinfo : posinfo → ParseTreeT
  parsed-datesep : datesep → ParseTreeT
  parsed-datesep-bar-11 : datesep-bar-11 → ParseTreeT
  parsed-datesep-bar-12 : datesep-bar-12 → ParseTreeT
  parsed-datesep-bar-13 : datesep-bar-13 → ParseTreeT
  parsed-day : day → ParseTreeT
  parsed-hour : hour → ParseTreeT
  parsed-id : id → ParseTreeT
  parsed-id-bar-6 : id-bar-6 → ParseTreeT
  parsed-id-bar-7 : id-bar-7 → ParseTreeT
  parsed-id-bar-8 : id-bar-8 → ParseTreeT
  parsed-id-plus-9 : id-plus-9 → ParseTreeT
  parsed-id-range-5 : id-range-5 → ParseTreeT
  parsed-minute : minute → ParseTreeT
  parsed-month : month → ParseTreeT
  parsed-whichm : whichm → ParseTreeT
  parsed-whichm-bar-14 : whichm-bar-14 → ParseTreeT
  parsed-whichm-bar-15 : whichm-bar-15 → ParseTreeT
  parsed-whichm-bar-16 : whichm-bar-16 → ParseTreeT
  parsed-year : year → ParseTreeT
  parsed-allday : ParseTreeT
  parsed-alldayA : ParseTreeT
  parsed-alldayA-bar-18 : ParseTreeT
  parsed-alldayA-bar-19 : ParseTreeT
  parsed-alldayD : ParseTreeT
  parsed-alldayD-bar-20 : ParseTreeT
  parsed-alldayD-bar-21 : ParseTreeT
  parsed-aws : ParseTreeT
  parsed-aws-bar-1 : ParseTreeT
  parsed-aws-bar-2 : ParseTreeT
  parsed-digit : ParseTreeT
  parsed-digit-range-10 : ParseTreeT
  parsed-ows : ParseTreeT
  parsed-ows-star-4 : ParseTreeT
  parsed-timesep : ParseTreeT
  parsed-timesep-bar-17 : ParseTreeT
  parsed-twodigit : ParseTreeT
  parsed-ws : ParseTreeT
  parsed-ws-plus-3 : ParseTreeT

------------------------------------------
-- Parse tree printing functions
------------------------------------------

posinfoToString : posinfo → string
posinfoToString x = "(posinfo " ^ x ^ ")"
datesepToString : datesep → string
datesepToString x = "(datesep " ^ x ^ ")"
datesep-bar-11ToString : datesep-bar-11 → string
datesep-bar-11ToString x = "(datesep-bar-11 " ^ x ^ ")"
datesep-bar-12ToString : datesep-bar-12 → string
datesep-bar-12ToString x = "(datesep-bar-12 " ^ x ^ ")"
datesep-bar-13ToString : datesep-bar-13 → string
datesep-bar-13ToString x = "(datesep-bar-13 " ^ x ^ ")"
dayToString : day → string
dayToString x = "(day " ^ x ^ ")"
hourToString : hour → string
hourToString x = "(hour " ^ x ^ ")"
idToString : id → string
idToString x = "(id " ^ x ^ ")"
id-bar-6ToString : id-bar-6 → string
id-bar-6ToString x = "(id-bar-6 " ^ x ^ ")"
id-bar-7ToString : id-bar-7 → string
id-bar-7ToString x = "(id-bar-7 " ^ x ^ ")"
id-bar-8ToString : id-bar-8 → string
id-bar-8ToString x = "(id-bar-8 " ^ x ^ ")"
id-plus-9ToString : id-plus-9 → string
id-plus-9ToString x = "(id-plus-9 " ^ x ^ ")"
id-range-5ToString : id-range-5 → string
id-range-5ToString x = "(id-range-5 " ^ x ^ ")"
minuteToString : minute → string
minuteToString x = "(minute " ^ x ^ ")"
monthToString : month → string
monthToString x = "(month " ^ x ^ ")"
whichmToString : whichm → string
whichmToString x = "(whichm " ^ x ^ ")"
whichm-bar-14ToString : whichm-bar-14 → string
whichm-bar-14ToString x = "(whichm-bar-14 " ^ x ^ ")"
whichm-bar-15ToString : whichm-bar-15 → string
whichm-bar-15ToString x = "(whichm-bar-15 " ^ x ^ ")"
whichm-bar-16ToString : whichm-bar-16 → string
whichm-bar-16ToString x = "(whichm-bar-16 " ^ x ^ ")"
yearToString : year → string
yearToString x = "(year " ^ x ^ ")"

mutual
  dateToString : date → string
  dateToString (AmericanDate x0 x1 x2 x3 x4) = "(AmericanDate" ^ " " ^ (monthToString x0) ^ " " ^ (datesepToString x1) ^ " " ^ (dayToString x2) ^ " " ^ (datesepToString x3) ^ " " ^ (yearToString x4) ^ ")"
  dateToString (GlobalDate x0 x1 x2 x3 x4) = "(GlobalDate" ^ " " ^ (yearToString x0) ^ " " ^ (datesepToString x1) ^ " " ^ (monthToString x2) ^ " " ^ (datesepToString x3) ^ " " ^ (dayToString x4) ^ ")"

  evtnameToString : evtname → string
  evtnameToString (EventName x0) = "(EventName" ^ " " ^ (idToString x0) ^ ")"

  strtToString : strt → string
  strtToString (Strt x0 x1 x2) = "(Strt" ^ " " ^ (evtnameToString x0) ^ " " ^ (dateToString x1) ^ " " ^ (timerangeToString x2) ^ ")"

  timerangeToString : timerange → string
  timerangeToString (AllDay) = "AllDay" ^ ""
  timerangeToString (MilitaryTime x0 x1 x2 x3) = "(MilitaryTime" ^ " " ^ (hourToString x0) ^ " " ^ (minuteToString x1) ^ " " ^ (hourToString x2) ^ " " ^ (minuteToString x3) ^ ")"
  timerangeToString (RegTime x0 x1 x2 x3 x4 x5) = "(RegTime" ^ " " ^ (hourToString x0) ^ " " ^ (minuteToString x1) ^ " " ^ (whichmToString x2) ^ " " ^ (hourToString x3) ^ " " ^ (minuteToString x4) ^ " " ^ (whichmToString x5) ^ ")"

ParseTreeToString : ParseTreeT → string
ParseTreeToString (parsed-date t) = dateToString t
ParseTreeToString (parsed-evtname t) = evtnameToString t
ParseTreeToString (parsed-strt t) = strtToString t
ParseTreeToString (parsed-timerange t) = timerangeToString t
ParseTreeToString (parsed-posinfo t) = posinfoToString t
ParseTreeToString (parsed-datesep t) = datesepToString t
ParseTreeToString (parsed-datesep-bar-11 t) = datesep-bar-11ToString t
ParseTreeToString (parsed-datesep-bar-12 t) = datesep-bar-12ToString t
ParseTreeToString (parsed-datesep-bar-13 t) = datesep-bar-13ToString t
ParseTreeToString (parsed-day t) = dayToString t
ParseTreeToString (parsed-hour t) = hourToString t
ParseTreeToString (parsed-id t) = idToString t
ParseTreeToString (parsed-id-bar-6 t) = id-bar-6ToString t
ParseTreeToString (parsed-id-bar-7 t) = id-bar-7ToString t
ParseTreeToString (parsed-id-bar-8 t) = id-bar-8ToString t
ParseTreeToString (parsed-id-plus-9 t) = id-plus-9ToString t
ParseTreeToString (parsed-id-range-5 t) = id-range-5ToString t
ParseTreeToString (parsed-minute t) = minuteToString t
ParseTreeToString (parsed-month t) = monthToString t
ParseTreeToString (parsed-whichm t) = whichmToString t
ParseTreeToString (parsed-whichm-bar-14 t) = whichm-bar-14ToString t
ParseTreeToString (parsed-whichm-bar-15 t) = whichm-bar-15ToString t
ParseTreeToString (parsed-whichm-bar-16 t) = whichm-bar-16ToString t
ParseTreeToString (parsed-year t) = yearToString t
ParseTreeToString parsed-allday = "[allday]"
ParseTreeToString parsed-alldayA = "[alldayA]"
ParseTreeToString parsed-alldayA-bar-18 = "[alldayA-bar-18]"
ParseTreeToString parsed-alldayA-bar-19 = "[alldayA-bar-19]"
ParseTreeToString parsed-alldayD = "[alldayD]"
ParseTreeToString parsed-alldayD-bar-20 = "[alldayD-bar-20]"
ParseTreeToString parsed-alldayD-bar-21 = "[alldayD-bar-21]"
ParseTreeToString parsed-aws = "[aws]"
ParseTreeToString parsed-aws-bar-1 = "[aws-bar-1]"
ParseTreeToString parsed-aws-bar-2 = "[aws-bar-2]"
ParseTreeToString parsed-digit = "[digit]"
ParseTreeToString parsed-digit-range-10 = "[digit-range-10]"
ParseTreeToString parsed-ows = "[ows]"
ParseTreeToString parsed-ows-star-4 = "[ows-star-4]"
ParseTreeToString parsed-timesep = "[timesep]"
ParseTreeToString parsed-timesep-bar-17 = "[timesep-bar-17]"
ParseTreeToString parsed-twodigit = "[twodigit]"
ParseTreeToString parsed-ws = "[ws]"
ParseTreeToString parsed-ws-plus-3 = "[ws-plus-3]"

------------------------------------------
-- Reorganizing rules
------------------------------------------

mutual

  {-# TERMINATING #-}
  norm-timerange : (x : timerange) → timerange
  norm-timerange x = x

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

