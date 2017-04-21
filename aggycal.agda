module aggycal where

open import lib

open import aggycal-types public
----------------------------------------------------------------------------------
-- Run-rewriting rules
----------------------------------------------------------------------------------

data gratr2-nt : Set where
  _year : gratr2-nt
  _ws-plus-3 : gratr2-nt
  _ws : gratr2-nt
  _words-range-21 : gratr2-nt
  _words-plus-23 : gratr2-nt
  _words-bar-22 : gratr2-nt
  _words : gratr2-nt
  _whichm : gratr2-nt
  _twodigit : gratr2-nt
  _timesep-bar-30 : gratr2-nt
  _timesep : gratr2-nt
  _timerange : gratr2-nt
  _time : gratr2-nt
  _symbol-bar-9 : gratr2-nt
  _symbol-bar-8 : gratr2-nt
  _symbol-bar-7 : gratr2-nt
  _symbol-bar-6 : gratr2-nt
  _symbol-bar-5 : gratr2-nt
  _symbol-bar-20 : gratr2-nt
  _symbol-bar-19 : gratr2-nt
  _symbol-bar-18 : gratr2-nt
  _symbol-bar-17 : gratr2-nt
  _symbol-bar-16 : gratr2-nt
  _symbol-bar-15 : gratr2-nt
  _symbol-bar-14 : gratr2-nt
  _symbol-bar-13 : gratr2-nt
  _symbol-bar-12 : gratr2-nt
  _symbol-bar-11 : gratr2-nt
  _symbol-bar-10 : gratr2-nt
  _symbol : gratr2-nt
  _strt : gratr2-nt
  _posinfo : gratr2-nt
  _pm-bar-29 : gratr2-nt
  _pm : gratr2-nt
  _ows-star-4 : gratr2-nt
  _ows : gratr2-nt
  _month : gratr2-nt
  _minute : gratr2-nt
  _hour : gratr2-nt
  _evtname : gratr2-nt
  _digit-range-24 : gratr2-nt
  _digit : gratr2-nt
  _description : gratr2-nt
  _day : gratr2-nt
  _datesep-bar-27 : gratr2-nt
  _datesep-bar-26 : gratr2-nt
  _datesep-bar-25 : gratr2-nt
  _datesep : gratr2-nt
  _date : gratr2-nt
  _aws-bar-2 : gratr2-nt
  _aws-bar-1 : gratr2-nt
  _aws : gratr2-nt
  _am-bar-28 : gratr2-nt
  _am : gratr2-nt
  _alldayD-bar-34 : gratr2-nt
  _alldayD-bar-33 : gratr2-nt
  _alldayD : gratr2-nt
  _alldayA-bar-32 : gratr2-nt
  _alldayA-bar-31 : gratr2-nt
  _alldayA : gratr2-nt
  _allday : gratr2-nt


gratr2-nt-eq : gratr2-nt → gratr2-nt → 𝔹
gratr2-nt-eq  _year _year = tt
gratr2-nt-eq  _ws-plus-3 _ws-plus-3 = tt
gratr2-nt-eq  _ws _ws = tt
gratr2-nt-eq  _words-range-21 _words-range-21 = tt
gratr2-nt-eq  _words-plus-23 _words-plus-23 = tt
gratr2-nt-eq  _words-bar-22 _words-bar-22 = tt
gratr2-nt-eq  _words _words = tt
gratr2-nt-eq  _whichm _whichm = tt
gratr2-nt-eq  _twodigit _twodigit = tt
gratr2-nt-eq  _timesep-bar-30 _timesep-bar-30 = tt
gratr2-nt-eq  _timesep _timesep = tt
gratr2-nt-eq  _timerange _timerange = tt
gratr2-nt-eq  _time _time = tt
gratr2-nt-eq  _symbol-bar-9 _symbol-bar-9 = tt
gratr2-nt-eq  _symbol-bar-8 _symbol-bar-8 = tt
gratr2-nt-eq  _symbol-bar-7 _symbol-bar-7 = tt
gratr2-nt-eq  _symbol-bar-6 _symbol-bar-6 = tt
gratr2-nt-eq  _symbol-bar-5 _symbol-bar-5 = tt
gratr2-nt-eq  _symbol-bar-20 _symbol-bar-20 = tt
gratr2-nt-eq  _symbol-bar-19 _symbol-bar-19 = tt
gratr2-nt-eq  _symbol-bar-18 _symbol-bar-18 = tt
gratr2-nt-eq  _symbol-bar-17 _symbol-bar-17 = tt
gratr2-nt-eq  _symbol-bar-16 _symbol-bar-16 = tt
gratr2-nt-eq  _symbol-bar-15 _symbol-bar-15 = tt
gratr2-nt-eq  _symbol-bar-14 _symbol-bar-14 = tt
gratr2-nt-eq  _symbol-bar-13 _symbol-bar-13 = tt
gratr2-nt-eq  _symbol-bar-12 _symbol-bar-12 = tt
gratr2-nt-eq  _symbol-bar-11 _symbol-bar-11 = tt
gratr2-nt-eq  _symbol-bar-10 _symbol-bar-10 = tt
gratr2-nt-eq  _symbol _symbol = tt
gratr2-nt-eq  _strt _strt = tt
gratr2-nt-eq  _posinfo _posinfo = tt
gratr2-nt-eq  _pm-bar-29 _pm-bar-29 = tt
gratr2-nt-eq  _pm _pm = tt
gratr2-nt-eq  _ows-star-4 _ows-star-4 = tt
gratr2-nt-eq  _ows _ows = tt
gratr2-nt-eq  _month _month = tt
gratr2-nt-eq  _minute _minute = tt
gratr2-nt-eq  _hour _hour = tt
gratr2-nt-eq  _evtname _evtname = tt
gratr2-nt-eq  _digit-range-24 _digit-range-24 = tt
gratr2-nt-eq  _digit _digit = tt
gratr2-nt-eq  _description _description = tt
gratr2-nt-eq  _day _day = tt
gratr2-nt-eq  _datesep-bar-27 _datesep-bar-27 = tt
gratr2-nt-eq  _datesep-bar-26 _datesep-bar-26 = tt
gratr2-nt-eq  _datesep-bar-25 _datesep-bar-25 = tt
gratr2-nt-eq  _datesep _datesep = tt
gratr2-nt-eq  _date _date = tt
gratr2-nt-eq  _aws-bar-2 _aws-bar-2 = tt
gratr2-nt-eq  _aws-bar-1 _aws-bar-1 = tt
gratr2-nt-eq  _aws _aws = tt
gratr2-nt-eq  _am-bar-28 _am-bar-28 = tt
gratr2-nt-eq  _am _am = tt
gratr2-nt-eq  _alldayD-bar-34 _alldayD-bar-34 = tt
gratr2-nt-eq  _alldayD-bar-33 _alldayD-bar-33 = tt
gratr2-nt-eq  _alldayD _alldayD = tt
gratr2-nt-eq  _alldayA-bar-32 _alldayA-bar-32 = tt
gratr2-nt-eq  _alldayA-bar-31 _alldayA-bar-31 = tt
gratr2-nt-eq  _alldayA _alldayA = tt
gratr2-nt-eq  _allday _allday = tt
gratr2-nt-eq _ _ = ff


open import rtn gratr2-nt


aggycal-start : gratr2-nt → 𝕃 gratr2-rule
aggycal-start _year = (just "P125" , nothing , just _year , inj₁ _digit :: inj₁ _digit :: inj₁ _digit :: inj₁ _digit :: []) :: []
aggycal-start _ws-plus-3 = (just "P6" , nothing , just _ws-plus-3 , inj₁ _aws :: inj₁ _ws-plus-3 :: []) :: (just "P5" , nothing , just _ws-plus-3 , inj₁ _aws :: []) :: []
aggycal-start _ws = (just "P7" , nothing , just _ws , inj₁ _ws-plus-3 :: []) :: []
aggycal-start _words-range-21 = (just "P99" , nothing , just _words-range-21 , inj₂ 't' :: []) :: (just "P98" , nothing , just _words-range-21 , inj₂ 's' :: []) :: (just "P97" , nothing , just _words-range-21 , inj₂ 'r' :: []) :: (just "P96" , nothing , just _words-range-21 , inj₂ 'q' :: []) :: (just "P95" , nothing , just _words-range-21 , inj₂ 'p' :: []) :: (just "P94" , nothing , just _words-range-21 , inj₂ 'o' :: []) :: (just "P93" , nothing , just _words-range-21 , inj₂ 'n' :: []) :: (just "P92" , nothing , just _words-range-21 , inj₂ 'm' :: []) :: (just "P91" , nothing , just _words-range-21 , inj₂ 'l' :: []) :: (just "P90" , nothing , just _words-range-21 , inj₂ 'k' :: []) :: (just "P89" , nothing , just _words-range-21 , inj₂ 'j' :: []) :: (just "P88" , nothing , just _words-range-21 , inj₂ 'i' :: []) :: (just "P87" , nothing , just _words-range-21 , inj₂ 'h' :: []) :: (just "P86" , nothing , just _words-range-21 , inj₂ 'g' :: []) :: (just "P85" , nothing , just _words-range-21 , inj₂ 'f' :: []) :: (just "P84" , nothing , just _words-range-21 , inj₂ 'e' :: []) :: (just "P83" , nothing , just _words-range-21 , inj₂ 'd' :: []) :: (just "P82" , nothing , just _words-range-21 , inj₂ 'c' :: []) :: (just "P81" , nothing , just _words-range-21 , inj₂ 'b' :: []) :: (just "P80" , nothing , just _words-range-21 , inj₂ 'a' :: []) :: (just "P79" , nothing , just _words-range-21 , inj₂ 'Z' :: []) :: (just "P78" , nothing , just _words-range-21 , inj₂ 'Y' :: []) :: (just "P77" , nothing , just _words-range-21 , inj₂ 'X' :: []) :: (just "P76" , nothing , just _words-range-21 , inj₂ 'W' :: []) :: (just "P75" , nothing , just _words-range-21 , inj₂ 'V' :: []) :: (just "P74" , nothing , just _words-range-21 , inj₂ 'U' :: []) :: (just "P73" , nothing , just _words-range-21 , inj₂ 'T' :: []) :: (just "P72" , nothing , just _words-range-21 , inj₂ 'S' :: []) :: (just "P71" , nothing , just _words-range-21 , inj₂ 'R' :: []) :: (just "P70" , nothing , just _words-range-21 , inj₂ 'Q' :: []) :: (just "P69" , nothing , just _words-range-21 , inj₂ 'P' :: []) :: (just "P68" , nothing , just _words-range-21 , inj₂ 'O' :: []) :: (just "P67" , nothing , just _words-range-21 , inj₂ 'N' :: []) :: (just "P66" , nothing , just _words-range-21 , inj₂ 'M' :: []) :: (just "P65" , nothing , just _words-range-21 , inj₂ 'L' :: []) :: (just "P64" , nothing , just _words-range-21 , inj₂ 'K' :: []) :: (just "P63" , nothing , just _words-range-21 , inj₂ 'J' :: []) :: (just "P62" , nothing , just _words-range-21 , inj₂ 'I' :: []) :: (just "P61" , nothing , just _words-range-21 , inj₂ 'H' :: []) :: (just "P60" , nothing , just _words-range-21 , inj₂ 'G' :: []) :: (just "P59" , nothing , just _words-range-21 , inj₂ 'F' :: []) :: (just "P58" , nothing , just _words-range-21 , inj₂ 'E' :: []) :: (just "P57" , nothing , just _words-range-21 , inj₂ 'D' :: []) :: (just "P56" , nothing , just _words-range-21 , inj₂ 'C' :: []) :: (just "P55" , nothing , just _words-range-21 , inj₂ 'B' :: []) :: (just "P54" , nothing , just _words-range-21 , inj₂ 'A' :: []) :: (just "P53" , nothing , just _words-range-21 , inj₂ '9' :: []) :: (just "P52" , nothing , just _words-range-21 , inj₂ '8' :: []) :: (just "P51" , nothing , just _words-range-21 , inj₂ '7' :: []) :: (just "P50" , nothing , just _words-range-21 , inj₂ '6' :: []) :: (just "P49" , nothing , just _words-range-21 , inj₂ '5' :: []) :: (just "P48" , nothing , just _words-range-21 , inj₂ '4' :: []) :: (just "P47" , nothing , just _words-range-21 , inj₂ '3' :: []) :: (just "P46" , nothing , just _words-range-21 , inj₂ '2' :: []) :: (just "P45" , nothing , just _words-range-21 , inj₂ '1' :: []) :: (just "P44" , nothing , just _words-range-21 , inj₂ '0' :: []) :: (just "P105" , nothing , just _words-range-21 , inj₂ 'z' :: []) :: (just "P104" , nothing , just _words-range-21 , inj₂ 'y' :: []) :: (just "P103" , nothing , just _words-range-21 , inj₂ 'x' :: []) :: (just "P102" , nothing , just _words-range-21 , inj₂ 'w' :: []) :: (just "P101" , nothing , just _words-range-21 , inj₂ 'v' :: []) :: (just "P100" , nothing , just _words-range-21 , inj₂ 'u' :: []) :: []
aggycal-start _words-plus-23 = (just "P109" , nothing , just _words-plus-23 , inj₁ _words-bar-22 :: inj₁ _words-plus-23 :: []) :: (just "P108" , nothing , just _words-plus-23 , inj₁ _words-bar-22 :: []) :: []
aggycal-start _words-bar-22 = (just "P107" , nothing , just _words-bar-22 , inj₁ _symbol :: []) :: (just "P106" , nothing , just _words-bar-22 , inj₁ _words-range-21 :: []) :: []
aggycal-start _words = (just "P110" , nothing , just _words , inj₁ _words-plus-23 :: []) :: []
aggycal-start _whichm = (just "PM" , nothing , just _whichm , inj₁ _pm :: []) :: (just "AM" , nothing , just _whichm , inj₁ _am :: []) :: []
aggycal-start _twodigit = (just "P122" , nothing , just _twodigit , inj₁ _digit :: inj₁ _digit :: []) :: []
aggycal-start _timesep-bar-30 = (just "P142" , nothing , just _timesep-bar-30 , inj₂ '-' :: []) :: (just "P141" , nothing , just _timesep-bar-30 , inj₂ 't' :: inj₂ 'o' :: []) :: []
aggycal-start _timesep = (just "P143" , nothing , just _timesep , inj₁ _timesep-bar-30 :: []) :: []
aggycal-start _timerange = (just "TimeRange" , nothing , just _timerange , inj₁ _time :: inj₁ _ows :: inj₁ _timesep :: inj₁ _ows :: inj₁ _time :: []) :: (just "AllDayRange" , nothing , just _timerange , inj₁ _allday :: []) :: []
aggycal-start _time = (just "RegTime" , nothing , just _time , inj₁ _hour :: inj₂ ':' :: inj₁ _minute :: inj₁ _ows :: inj₁ _whichm :: []) :: (just "MilitaryTime" , nothing , just _time , inj₁ _hour :: inj₂ ':' :: inj₁ _minute :: []) :: []
aggycal-start _symbol-bar-9 = (just "P20" , nothing , just _symbol-bar-9 , inj₁ _symbol-bar-8 :: []) :: (just "P19" , nothing , just _symbol-bar-9 , inj₂ '@' :: []) :: []
aggycal-start _symbol-bar-8 = (just "P18" , nothing , just _symbol-bar-8 , inj₁ _symbol-bar-7 :: []) :: (just "P17" , nothing , just _symbol-bar-8 , inj₂ ';' :: []) :: []
aggycal-start _symbol-bar-7 = (just "P16" , nothing , just _symbol-bar-7 , inj₁ _symbol-bar-6 :: []) :: (just "P15" , nothing , just _symbol-bar-7 , inj₂ '_' :: []) :: []
aggycal-start _symbol-bar-6 = (just "P14" , nothing , just _symbol-bar-6 , inj₁ _symbol-bar-5 :: []) :: (just "P13" , nothing , just _symbol-bar-6 , inj₂ '%' :: []) :: []
aggycal-start _symbol-bar-5 = (just "P12" , nothing , just _symbol-bar-5 , inj₂ '\'' :: []) :: (just "P11" , nothing , just _symbol-bar-5 , inj₂ '"' :: []) :: []
aggycal-start _symbol-bar-20 = (just "P42" , nothing , just _symbol-bar-20 , inj₁ _symbol-bar-19 :: []) :: (just "P41" , nothing , just _symbol-bar-20 , inj₂ ' ' :: []) :: []
aggycal-start _symbol-bar-19 = (just "P40" , nothing , just _symbol-bar-19 , inj₁ _symbol-bar-18 :: []) :: (just "P39" , nothing , just _symbol-bar-19 , inj₂ '!' :: []) :: []
aggycal-start _symbol-bar-18 = (just "P38" , nothing , just _symbol-bar-18 , inj₁ _symbol-bar-17 :: []) :: (just "P37" , nothing , just _symbol-bar-18 , inj₂ '?' :: []) :: []
aggycal-start _symbol-bar-17 = (just "P36" , nothing , just _symbol-bar-17 , inj₁ _symbol-bar-16 :: []) :: (just "P35" , nothing , just _symbol-bar-17 , inj₂ '.' :: []) :: []
aggycal-start _symbol-bar-16 = (just "P34" , nothing , just _symbol-bar-16 , inj₁ _symbol-bar-15 :: []) :: (just "P33" , nothing , just _symbol-bar-16 , inj₂ ',' :: []) :: []
aggycal-start _symbol-bar-15 = (just "P32" , nothing , just _symbol-bar-15 , inj₁ _symbol-bar-14 :: []) :: (just "P31" , nothing , just _symbol-bar-15 , inj₂ '$' :: []) :: []
aggycal-start _symbol-bar-14 = (just "P30" , nothing , just _symbol-bar-14 , inj₁ _symbol-bar-13 :: []) :: (just "P29" , nothing , just _symbol-bar-14 , inj₂ '+' :: []) :: []
aggycal-start _symbol-bar-13 = (just "P28" , nothing , just _symbol-bar-13 , inj₁ _symbol-bar-12 :: []) :: (just "P27" , nothing , just _symbol-bar-13 , inj₂ '-' :: []) :: []
aggycal-start _symbol-bar-12 = (just "P26" , nothing , just _symbol-bar-12 , inj₁ _symbol-bar-11 :: []) :: (just "P25" , nothing , just _symbol-bar-12 , inj₂ '(' :: []) :: []
aggycal-start _symbol-bar-11 = (just "P24" , nothing , just _symbol-bar-11 , inj₁ _symbol-bar-10 :: []) :: (just "P23" , nothing , just _symbol-bar-11 , inj₂ ')' :: []) :: []
aggycal-start _symbol-bar-10 = (just "P22" , nothing , just _symbol-bar-10 , inj₁ _symbol-bar-9 :: []) :: (just "P21" , nothing , just _symbol-bar-10 , inj₂ '#' :: []) :: []
aggycal-start _symbol = (just "P43" , nothing , just _symbol , inj₁ _symbol-bar-20 :: []) :: []
aggycal-start _strt = (just "Strt" , nothing , just _strt , inj₁ _ows :: inj₁ _evtname :: inj₂ '\n' :: inj₁ _date :: inj₁ _ws :: inj₁ _timerange :: inj₁ _ows :: inj₁ _description :: inj₁ _ows :: []) :: []
aggycal-start _posinfo = (just "Posinfo" , nothing , just _posinfo , []) :: []
aggycal-start _pm-bar-29 = (just "P139" , nothing , just _pm-bar-29 , inj₂ 'p' :: inj₂ 'm' :: []) :: (just "P138" , nothing , just _pm-bar-29 , inj₂ 'P' :: inj₂ 'M' :: []) :: []
aggycal-start _pm = (just "P140" , nothing , just _pm , inj₁ _pm-bar-29 :: []) :: []
aggycal-start _ows-star-4 = (just "P9" , nothing , just _ows-star-4 , inj₁ _aws :: inj₁ _ows-star-4 :: []) :: (just "P8" , nothing , just _ows-star-4 , []) :: []
aggycal-start _ows = (just "P10" , nothing , just _ows , inj₁ _ows-star-4 :: []) :: []
aggycal-start _month = (just "P123" , nothing , just _month , inj₁ _twodigit :: []) :: []
aggycal-start _minute = (just "P134" , nothing , just _minute , inj₁ _twodigit :: []) :: []
aggycal-start _hour = (just "P133" , nothing , just _hour , inj₁ _twodigit :: []) :: []
aggycal-start _evtname = (just "EventName" , nothing , just _evtname , inj₁ _words :: []) :: []
aggycal-start _digit-range-24 = (just "P120" , nothing , just _digit-range-24 , inj₂ '9' :: []) :: (just "P119" , nothing , just _digit-range-24 , inj₂ '8' :: []) :: (just "P118" , nothing , just _digit-range-24 , inj₂ '7' :: []) :: (just "P117" , nothing , just _digit-range-24 , inj₂ '6' :: []) :: (just "P116" , nothing , just _digit-range-24 , inj₂ '5' :: []) :: (just "P115" , nothing , just _digit-range-24 , inj₂ '4' :: []) :: (just "P114" , nothing , just _digit-range-24 , inj₂ '3' :: []) :: (just "P113" , nothing , just _digit-range-24 , inj₂ '2' :: []) :: (just "P112" , nothing , just _digit-range-24 , inj₂ '1' :: []) :: (just "P111" , nothing , just _digit-range-24 , inj₂ '0' :: []) :: []
aggycal-start _digit = (just "P121" , nothing , just _digit , inj₁ _digit-range-24 :: []) :: []
aggycal-start _description = (just "NoDescription" , nothing , just _description , []) :: (just "Description" , nothing , just _description , inj₁ _words :: []) :: []
aggycal-start _day = (just "P124" , nothing , just _day , inj₁ _twodigit :: []) :: []
aggycal-start _datesep-bar-27 = (just "P131" , nothing , just _datesep-bar-27 , inj₁ _datesep-bar-26 :: []) :: (just "P130" , nothing , just _datesep-bar-27 , inj₂ '/' :: []) :: []
aggycal-start _datesep-bar-26 = (just "P129" , nothing , just _datesep-bar-26 , inj₁ _datesep-bar-25 :: []) :: (just "P128" , nothing , just _datesep-bar-26 , inj₂ '.' :: []) :: []
aggycal-start _datesep-bar-25 = (just "P127" , nothing , just _datesep-bar-25 , inj₂ ' ' :: []) :: (just "P126" , nothing , just _datesep-bar-25 , inj₂ ',' :: []) :: []
aggycal-start _datesep = (just "P132" , nothing , just _datesep , inj₁ _datesep-bar-27 :: []) :: []
aggycal-start _date = (just "GlobalDate" , nothing , just _date , inj₁ _year :: inj₁ _datesep :: inj₁ _month :: inj₁ _datesep :: inj₁ _day :: []) :: (just "AmericanDate" , nothing , just _date , inj₁ _month :: inj₁ _datesep :: inj₁ _day :: inj₁ _datesep :: inj₁ _year :: []) :: []
aggycal-start _aws-bar-2 = (just "P3" , nothing , just _aws-bar-2 , inj₁ _aws-bar-1 :: []) :: (just "P2" , nothing , just _aws-bar-2 , inj₂ '\n' :: []) :: []
aggycal-start _aws-bar-1 = (just "P1" , nothing , just _aws-bar-1 , inj₂ ' ' :: []) :: (just "P0" , nothing , just _aws-bar-1 , inj₂ '\t' :: []) :: []
aggycal-start _aws = (just "P4" , nothing , just _aws , inj₁ _aws-bar-2 :: []) :: []
aggycal-start _am-bar-28 = (just "P136" , nothing , just _am-bar-28 , inj₂ 'a' :: inj₂ 'm' :: []) :: (just "P135" , nothing , just _am-bar-28 , inj₂ 'A' :: inj₂ 'M' :: []) :: []
aggycal-start _am = (just "P137" , nothing , just _am , inj₁ _am-bar-28 :: []) :: []
aggycal-start _alldayD-bar-34 = (just "P152" , nothing , just _alldayD-bar-34 , inj₁ _alldayD-bar-33 :: []) :: (just "P151" , nothing , just _alldayD-bar-34 , inj₂ 'd' :: inj₂ 'a' :: inj₂ 'y' :: []) :: []
aggycal-start _alldayD-bar-33 = (just "P150" , nothing , just _alldayD-bar-33 , inj₂ 'D' :: inj₂ 'A' :: inj₂ 'Y' :: []) :: (just "P149" , nothing , just _alldayD-bar-33 , inj₂ 'D' :: inj₂ 'a' :: inj₂ 'y' :: []) :: []
aggycal-start _alldayD = (just "P153" , nothing , just _alldayD , inj₁ _alldayD-bar-34 :: []) :: []
aggycal-start _alldayA-bar-32 = (just "P147" , nothing , just _alldayA-bar-32 , inj₁ _alldayA-bar-31 :: []) :: (just "P146" , nothing , just _alldayA-bar-32 , inj₂ 'a' :: inj₂ 'l' :: inj₂ 'l' :: []) :: []
aggycal-start _alldayA-bar-31 = (just "P145" , nothing , just _alldayA-bar-31 , inj₂ 'A' :: inj₂ 'L' :: inj₂ 'L' :: []) :: (just "P144" , nothing , just _alldayA-bar-31 , inj₂ 'A' :: inj₂ 'l' :: inj₂ 'l' :: []) :: []
aggycal-start _alldayA = (just "P148" , nothing , just _alldayA , inj₁ _alldayA-bar-32 :: []) :: []
aggycal-start _allday = (just "P154" , nothing , just _allday , inj₁ _alldayA :: inj₁ _ows :: inj₁ _alldayD :: []) :: []


aggycal-return : maybe gratr2-nt → 𝕃 gratr2-rule
aggycal-return _ = []

aggycal-rtn : gratr2-rtn
aggycal-rtn = record { start = _strt ; _eq_ = gratr2-nt-eq ; gratr2-start = aggycal-start ; gratr2-return = aggycal-return }

open import run ptr
open noderiv

------------------------------------------
-- Length-decreasing rules
------------------------------------------

len-dec-rewrite : Run → maybe (Run × ℕ)
len-dec-rewrite {- AM-} ((Id "AM") :: _::_(ParseTree parsed-am) rest) = just (ParseTree (parsed-whichm (norm-whichm AM)) ::' rest , 2)
len-dec-rewrite {- AllDayRange-} ((Id "AllDayRange") :: _::_(ParseTree parsed-allday) rest) = just (ParseTree (parsed-timerange (norm-timerange AllDayRange)) ::' rest , 2)
len-dec-rewrite {- AmericanDate-} ((Id "AmericanDate") :: (ParseTree (parsed-month x0)) :: (ParseTree parsed-datesep) :: (ParseTree (parsed-day x1)) :: (ParseTree parsed-datesep) :: _::_(ParseTree (parsed-year x2)) rest) = just (ParseTree (parsed-date (norm-date (AmericanDate x0 x1 x2))) ::' rest , 6)
len-dec-rewrite {- Description-} ((Id "Description") :: _::_(ParseTree (parsed-words x0)) rest) = just (ParseTree (parsed-description (norm-description (Description x0))) ::' rest , 2)
len-dec-rewrite {- EventName-} ((Id "EventName") :: _::_(ParseTree (parsed-words x0)) rest) = just (ParseTree (parsed-evtname (norm-evtname (EventName x0))) ::' rest , 2)
len-dec-rewrite {- GlobalDate-} ((Id "GlobalDate") :: (ParseTree (parsed-year x0)) :: (ParseTree parsed-datesep) :: (ParseTree (parsed-month x1)) :: (ParseTree parsed-datesep) :: _::_(ParseTree (parsed-day x2)) rest) = just (ParseTree (parsed-date (norm-date (GlobalDate x0 x1 x2))) ::' rest , 6)
len-dec-rewrite {- MilitaryTime-} ((Id "MilitaryTime") :: (ParseTree (parsed-hour x0)) :: (InputChar ':') :: _::_(ParseTree (parsed-minute x1)) rest) = just (ParseTree (parsed-time (norm-time (MilitaryTime x0 x1))) ::' rest , 4)
len-dec-rewrite {- P0-} ((Id "P0") :: _::_(InputChar '\t') rest) = just (ParseTree parsed-aws-bar-1 ::' rest , 2)
len-dec-rewrite {- P1-} ((Id "P1") :: _::_(InputChar ' ') rest) = just (ParseTree parsed-aws-bar-1 ::' rest , 2)
len-dec-rewrite {- P10-} ((Id "P10") :: _::_(ParseTree parsed-ows-star-4) rest) = just (ParseTree parsed-ows ::' rest , 2)
len-dec-rewrite {- P100-} ((Id "P100") :: _::_(InputChar 'u') rest) = just (ParseTree (parsed-words-range-21 (string-append 0 (char-to-string 'u'))) ::' rest , 2)
len-dec-rewrite {- P101-} ((Id "P101") :: _::_(InputChar 'v') rest) = just (ParseTree (parsed-words-range-21 (string-append 0 (char-to-string 'v'))) ::' rest , 2)
len-dec-rewrite {- P102-} ((Id "P102") :: _::_(InputChar 'w') rest) = just (ParseTree (parsed-words-range-21 (string-append 0 (char-to-string 'w'))) ::' rest , 2)
len-dec-rewrite {- P103-} ((Id "P103") :: _::_(InputChar 'x') rest) = just (ParseTree (parsed-words-range-21 (string-append 0 (char-to-string 'x'))) ::' rest , 2)
len-dec-rewrite {- P104-} ((Id "P104") :: _::_(InputChar 'y') rest) = just (ParseTree (parsed-words-range-21 (string-append 0 (char-to-string 'y'))) ::' rest , 2)
len-dec-rewrite {- P105-} ((Id "P105") :: _::_(InputChar 'z') rest) = just (ParseTree (parsed-words-range-21 (string-append 0 (char-to-string 'z'))) ::' rest , 2)
len-dec-rewrite {- P106-} ((Id "P106") :: _::_(ParseTree (parsed-words-range-21 x0)) rest) = just (ParseTree (parsed-words-bar-22 (string-append 0 x0)) ::' rest , 2)
len-dec-rewrite {- P107-} ((Id "P107") :: _::_(ParseTree (parsed-symbol x0)) rest) = just (ParseTree (parsed-words-bar-22 (string-append 0 x0)) ::' rest , 2)
len-dec-rewrite {- P108-} ((Id "P108") :: _::_(ParseTree (parsed-words-bar-22 x0)) rest) = just (ParseTree (parsed-words-plus-23 (string-append 0 x0)) ::' rest , 2)
len-dec-rewrite {- P109-} ((Id "P109") :: (ParseTree (parsed-words-bar-22 x0)) :: _::_(ParseTree (parsed-words-plus-23 x1)) rest) = just (ParseTree (parsed-words-plus-23 (string-append 1 x0 x1)) ::' rest , 3)
len-dec-rewrite {- P11-} ((Id "P11") :: _::_(InputChar '"') rest) = just (ParseTree (parsed-symbol-bar-5 (string-append 0 (char-to-string '"'))) ::' rest , 2)
len-dec-rewrite {- P110-} ((Id "P110") :: _::_(ParseTree (parsed-words-plus-23 x0)) rest) = just (ParseTree (parsed-words (string-append 0 x0)) ::' rest , 2)
len-dec-rewrite {- P111-} ((Id "P111") :: _::_(InputChar '0') rest) = just (ParseTree (parsed-digit-range-24 (string-append 0 (char-to-string '0'))) ::' rest , 2)
len-dec-rewrite {- P112-} ((Id "P112") :: _::_(InputChar '1') rest) = just (ParseTree (parsed-digit-range-24 (string-append 0 (char-to-string '1'))) ::' rest , 2)
len-dec-rewrite {- P113-} ((Id "P113") :: _::_(InputChar '2') rest) = just (ParseTree (parsed-digit-range-24 (string-append 0 (char-to-string '2'))) ::' rest , 2)
len-dec-rewrite {- P114-} ((Id "P114") :: _::_(InputChar '3') rest) = just (ParseTree (parsed-digit-range-24 (string-append 0 (char-to-string '3'))) ::' rest , 2)
len-dec-rewrite {- P115-} ((Id "P115") :: _::_(InputChar '4') rest) = just (ParseTree (parsed-digit-range-24 (string-append 0 (char-to-string '4'))) ::' rest , 2)
len-dec-rewrite {- P116-} ((Id "P116") :: _::_(InputChar '5') rest) = just (ParseTree (parsed-digit-range-24 (string-append 0 (char-to-string '5'))) ::' rest , 2)
len-dec-rewrite {- P117-} ((Id "P117") :: _::_(InputChar '6') rest) = just (ParseTree (parsed-digit-range-24 (string-append 0 (char-to-string '6'))) ::' rest , 2)
len-dec-rewrite {- P118-} ((Id "P118") :: _::_(InputChar '7') rest) = just (ParseTree (parsed-digit-range-24 (string-append 0 (char-to-string '7'))) ::' rest , 2)
len-dec-rewrite {- P119-} ((Id "P119") :: _::_(InputChar '8') rest) = just (ParseTree (parsed-digit-range-24 (string-append 0 (char-to-string '8'))) ::' rest , 2)
len-dec-rewrite {- P12-} ((Id "P12") :: _::_(InputChar '\'') rest) = just (ParseTree (parsed-symbol-bar-5 (string-append 0 (char-to-string '\''))) ::' rest , 2)
len-dec-rewrite {- P120-} ((Id "P120") :: _::_(InputChar '9') rest) = just (ParseTree (parsed-digit-range-24 (string-append 0 (char-to-string '9'))) ::' rest , 2)
len-dec-rewrite {- P121-} ((Id "P121") :: _::_(ParseTree (parsed-digit-range-24 x0)) rest) = just (ParseTree (parsed-digit (string-append 0 x0)) ::' rest , 2)
len-dec-rewrite {- P122-} ((Id "P122") :: (ParseTree (parsed-digit x0)) :: _::_(ParseTree (parsed-digit x1)) rest) = just (ParseTree (parsed-twodigit (string-append 1 x0 x1)) ::' rest , 3)
len-dec-rewrite {- P123-} ((Id "P123") :: _::_(ParseTree (parsed-twodigit x0)) rest) = just (ParseTree (parsed-month (string-append 0 x0)) ::' rest , 2)
len-dec-rewrite {- P124-} ((Id "P124") :: _::_(ParseTree (parsed-twodigit x0)) rest) = just (ParseTree (parsed-day (string-append 0 x0)) ::' rest , 2)
len-dec-rewrite {- P125-} ((Id "P125") :: (ParseTree (parsed-digit x0)) :: (ParseTree (parsed-digit x1)) :: (ParseTree (parsed-digit x2)) :: _::_(ParseTree (parsed-digit x3)) rest) = just (ParseTree (parsed-year (string-append 3 x0 x1 x2 x3)) ::' rest , 5)
len-dec-rewrite {- P126-} ((Id "P126") :: _::_(InputChar ',') rest) = just (ParseTree parsed-datesep-bar-25 ::' rest , 2)
len-dec-rewrite {- P127-} ((Id "P127") :: _::_(InputChar ' ') rest) = just (ParseTree parsed-datesep-bar-25 ::' rest , 2)
len-dec-rewrite {- P128-} ((Id "P128") :: _::_(InputChar '.') rest) = just (ParseTree parsed-datesep-bar-26 ::' rest , 2)
len-dec-rewrite {- P129-} ((Id "P129") :: _::_(ParseTree parsed-datesep-bar-25) rest) = just (ParseTree parsed-datesep-bar-26 ::' rest , 2)
len-dec-rewrite {- P13-} ((Id "P13") :: _::_(InputChar '%') rest) = just (ParseTree (parsed-symbol-bar-6 (string-append 0 (char-to-string '%'))) ::' rest , 2)
len-dec-rewrite {- P130-} ((Id "P130") :: _::_(InputChar '/') rest) = just (ParseTree parsed-datesep-bar-27 ::' rest , 2)
len-dec-rewrite {- P131-} ((Id "P131") :: _::_(ParseTree parsed-datesep-bar-26) rest) = just (ParseTree parsed-datesep-bar-27 ::' rest , 2)
len-dec-rewrite {- P132-} ((Id "P132") :: _::_(ParseTree parsed-datesep-bar-27) rest) = just (ParseTree parsed-datesep ::' rest , 2)
len-dec-rewrite {- P133-} ((Id "P133") :: _::_(ParseTree (parsed-twodigit x0)) rest) = just (ParseTree (parsed-hour (string-append 0 x0)) ::' rest , 2)
len-dec-rewrite {- P134-} ((Id "P134") :: _::_(ParseTree (parsed-twodigit x0)) rest) = just (ParseTree (parsed-minute (string-append 0 x0)) ::' rest , 2)
len-dec-rewrite {- P135-} ((Id "P135") :: (InputChar 'A') :: _::_(InputChar 'M') rest) = just (ParseTree parsed-am-bar-28 ::' rest , 3)
len-dec-rewrite {- P136-} ((Id "P136") :: (InputChar 'a') :: _::_(InputChar 'm') rest) = just (ParseTree parsed-am-bar-28 ::' rest , 3)
len-dec-rewrite {- P137-} ((Id "P137") :: _::_(ParseTree parsed-am-bar-28) rest) = just (ParseTree parsed-am ::' rest , 2)
len-dec-rewrite {- P138-} ((Id "P138") :: (InputChar 'P') :: _::_(InputChar 'M') rest) = just (ParseTree parsed-pm-bar-29 ::' rest , 3)
len-dec-rewrite {- P139-} ((Id "P139") :: (InputChar 'p') :: _::_(InputChar 'm') rest) = just (ParseTree parsed-pm-bar-29 ::' rest , 3)
len-dec-rewrite {- P14-} ((Id "P14") :: _::_(ParseTree (parsed-symbol-bar-5 x0)) rest) = just (ParseTree (parsed-symbol-bar-6 (string-append 0 x0)) ::' rest , 2)
len-dec-rewrite {- P140-} ((Id "P140") :: _::_(ParseTree parsed-pm-bar-29) rest) = just (ParseTree parsed-pm ::' rest , 2)
len-dec-rewrite {- P141-} ((Id "P141") :: (InputChar 't') :: _::_(InputChar 'o') rest) = just (ParseTree parsed-timesep-bar-30 ::' rest , 3)
len-dec-rewrite {- P142-} ((Id "P142") :: _::_(InputChar '-') rest) = just (ParseTree parsed-timesep-bar-30 ::' rest , 2)
len-dec-rewrite {- P143-} ((Id "P143") :: _::_(ParseTree parsed-timesep-bar-30) rest) = just (ParseTree parsed-timesep ::' rest , 2)
len-dec-rewrite {- P144-} ((Id "P144") :: (InputChar 'A') :: (InputChar 'l') :: _::_(InputChar 'l') rest) = just (ParseTree parsed-alldayA-bar-31 ::' rest , 4)
len-dec-rewrite {- P145-} ((Id "P145") :: (InputChar 'A') :: (InputChar 'L') :: _::_(InputChar 'L') rest) = just (ParseTree parsed-alldayA-bar-31 ::' rest , 4)
len-dec-rewrite {- P146-} ((Id "P146") :: (InputChar 'a') :: (InputChar 'l') :: _::_(InputChar 'l') rest) = just (ParseTree parsed-alldayA-bar-32 ::' rest , 4)
len-dec-rewrite {- P147-} ((Id "P147") :: _::_(ParseTree parsed-alldayA-bar-31) rest) = just (ParseTree parsed-alldayA-bar-32 ::' rest , 2)
len-dec-rewrite {- P148-} ((Id "P148") :: _::_(ParseTree parsed-alldayA-bar-32) rest) = just (ParseTree parsed-alldayA ::' rest , 2)
len-dec-rewrite {- P149-} ((Id "P149") :: (InputChar 'D') :: (InputChar 'a') :: _::_(InputChar 'y') rest) = just (ParseTree parsed-alldayD-bar-33 ::' rest , 4)
len-dec-rewrite {- P15-} ((Id "P15") :: _::_(InputChar '_') rest) = just (ParseTree (parsed-symbol-bar-7 (string-append 0 (char-to-string '_'))) ::' rest , 2)
len-dec-rewrite {- P150-} ((Id "P150") :: (InputChar 'D') :: (InputChar 'A') :: _::_(InputChar 'Y') rest) = just (ParseTree parsed-alldayD-bar-33 ::' rest , 4)
len-dec-rewrite {- P151-} ((Id "P151") :: (InputChar 'd') :: (InputChar 'a') :: _::_(InputChar 'y') rest) = just (ParseTree parsed-alldayD-bar-34 ::' rest , 4)
len-dec-rewrite {- P152-} ((Id "P152") :: _::_(ParseTree parsed-alldayD-bar-33) rest) = just (ParseTree parsed-alldayD-bar-34 ::' rest , 2)
len-dec-rewrite {- P153-} ((Id "P153") :: _::_(ParseTree parsed-alldayD-bar-34) rest) = just (ParseTree parsed-alldayD ::' rest , 2)
len-dec-rewrite {- P154-} ((Id "P154") :: (ParseTree parsed-alldayA) :: (ParseTree parsed-ows) :: _::_(ParseTree parsed-alldayD) rest) = just (ParseTree parsed-allday ::' rest , 4)
len-dec-rewrite {- P16-} ((Id "P16") :: _::_(ParseTree (parsed-symbol-bar-6 x0)) rest) = just (ParseTree (parsed-symbol-bar-7 (string-append 0 x0)) ::' rest , 2)
len-dec-rewrite {- P17-} ((Id "P17") :: _::_(InputChar ';') rest) = just (ParseTree (parsed-symbol-bar-8 (string-append 0 (char-to-string ';'))) ::' rest , 2)
len-dec-rewrite {- P18-} ((Id "P18") :: _::_(ParseTree (parsed-symbol-bar-7 x0)) rest) = just (ParseTree (parsed-symbol-bar-8 (string-append 0 x0)) ::' rest , 2)
len-dec-rewrite {- P19-} ((Id "P19") :: _::_(InputChar '@') rest) = just (ParseTree (parsed-symbol-bar-9 (string-append 0 (char-to-string '@'))) ::' rest , 2)
len-dec-rewrite {- P2-} ((Id "P2") :: _::_(InputChar '\n') rest) = just (ParseTree parsed-aws-bar-2 ::' rest , 2)
len-dec-rewrite {- P20-} ((Id "P20") :: _::_(ParseTree (parsed-symbol-bar-8 x0)) rest) = just (ParseTree (parsed-symbol-bar-9 (string-append 0 x0)) ::' rest , 2)
len-dec-rewrite {- P21-} ((Id "P21") :: _::_(InputChar '#') rest) = just (ParseTree (parsed-symbol-bar-10 (string-append 0 (char-to-string '#'))) ::' rest , 2)
len-dec-rewrite {- P22-} ((Id "P22") :: _::_(ParseTree (parsed-symbol-bar-9 x0)) rest) = just (ParseTree (parsed-symbol-bar-10 (string-append 0 x0)) ::' rest , 2)
len-dec-rewrite {- P23-} ((Id "P23") :: _::_(InputChar ')') rest) = just (ParseTree (parsed-symbol-bar-11 (string-append 0 (char-to-string ')'))) ::' rest , 2)
len-dec-rewrite {- P24-} ((Id "P24") :: _::_(ParseTree (parsed-symbol-bar-10 x0)) rest) = just (ParseTree (parsed-symbol-bar-11 (string-append 0 x0)) ::' rest , 2)
len-dec-rewrite {- P25-} ((Id "P25") :: _::_(InputChar '(') rest) = just (ParseTree (parsed-symbol-bar-12 (string-append 0 (char-to-string '('))) ::' rest , 2)
len-dec-rewrite {- P26-} ((Id "P26") :: _::_(ParseTree (parsed-symbol-bar-11 x0)) rest) = just (ParseTree (parsed-symbol-bar-12 (string-append 0 x0)) ::' rest , 2)
len-dec-rewrite {- P27-} ((Id "P27") :: _::_(InputChar '-') rest) = just (ParseTree (parsed-symbol-bar-13 (string-append 0 (char-to-string '-'))) ::' rest , 2)
len-dec-rewrite {- P28-} ((Id "P28") :: _::_(ParseTree (parsed-symbol-bar-12 x0)) rest) = just (ParseTree (parsed-symbol-bar-13 (string-append 0 x0)) ::' rest , 2)
len-dec-rewrite {- P29-} ((Id "P29") :: _::_(InputChar '+') rest) = just (ParseTree (parsed-symbol-bar-14 (string-append 0 (char-to-string '+'))) ::' rest , 2)
len-dec-rewrite {- P3-} ((Id "P3") :: _::_(ParseTree parsed-aws-bar-1) rest) = just (ParseTree parsed-aws-bar-2 ::' rest , 2)
len-dec-rewrite {- P30-} ((Id "P30") :: _::_(ParseTree (parsed-symbol-bar-13 x0)) rest) = just (ParseTree (parsed-symbol-bar-14 (string-append 0 x0)) ::' rest , 2)
len-dec-rewrite {- P31-} ((Id "P31") :: _::_(InputChar '$') rest) = just (ParseTree (parsed-symbol-bar-15 (string-append 0 (char-to-string '$'))) ::' rest , 2)
len-dec-rewrite {- P32-} ((Id "P32") :: _::_(ParseTree (parsed-symbol-bar-14 x0)) rest) = just (ParseTree (parsed-symbol-bar-15 (string-append 0 x0)) ::' rest , 2)
len-dec-rewrite {- P33-} ((Id "P33") :: _::_(InputChar ',') rest) = just (ParseTree (parsed-symbol-bar-16 (string-append 0 (char-to-string ','))) ::' rest , 2)
len-dec-rewrite {- P34-} ((Id "P34") :: _::_(ParseTree (parsed-symbol-bar-15 x0)) rest) = just (ParseTree (parsed-symbol-bar-16 (string-append 0 x0)) ::' rest , 2)
len-dec-rewrite {- P35-} ((Id "P35") :: _::_(InputChar '.') rest) = just (ParseTree (parsed-symbol-bar-17 (string-append 0 (char-to-string '.'))) ::' rest , 2)
len-dec-rewrite {- P36-} ((Id "P36") :: _::_(ParseTree (parsed-symbol-bar-16 x0)) rest) = just (ParseTree (parsed-symbol-bar-17 (string-append 0 x0)) ::' rest , 2)
len-dec-rewrite {- P37-} ((Id "P37") :: _::_(InputChar '?') rest) = just (ParseTree (parsed-symbol-bar-18 (string-append 0 (char-to-string '?'))) ::' rest , 2)
len-dec-rewrite {- P38-} ((Id "P38") :: _::_(ParseTree (parsed-symbol-bar-17 x0)) rest) = just (ParseTree (parsed-symbol-bar-18 (string-append 0 x0)) ::' rest , 2)
len-dec-rewrite {- P39-} ((Id "P39") :: _::_(InputChar '!') rest) = just (ParseTree (parsed-symbol-bar-19 (string-append 0 (char-to-string '!'))) ::' rest , 2)
len-dec-rewrite {- P4-} ((Id "P4") :: _::_(ParseTree parsed-aws-bar-2) rest) = just (ParseTree parsed-aws ::' rest , 2)
len-dec-rewrite {- P40-} ((Id "P40") :: _::_(ParseTree (parsed-symbol-bar-18 x0)) rest) = just (ParseTree (parsed-symbol-bar-19 (string-append 0 x0)) ::' rest , 2)
len-dec-rewrite {- P41-} ((Id "P41") :: _::_(InputChar ' ') rest) = just (ParseTree (parsed-symbol-bar-20 (string-append 0 (char-to-string ' '))) ::' rest , 2)
len-dec-rewrite {- P42-} ((Id "P42") :: _::_(ParseTree (parsed-symbol-bar-19 x0)) rest) = just (ParseTree (parsed-symbol-bar-20 (string-append 0 x0)) ::' rest , 2)
len-dec-rewrite {- P43-} ((Id "P43") :: _::_(ParseTree (parsed-symbol-bar-20 x0)) rest) = just (ParseTree (parsed-symbol (string-append 0 x0)) ::' rest , 2)
len-dec-rewrite {- P44-} ((Id "P44") :: _::_(InputChar '0') rest) = just (ParseTree (parsed-words-range-21 (string-append 0 (char-to-string '0'))) ::' rest , 2)
len-dec-rewrite {- P45-} ((Id "P45") :: _::_(InputChar '1') rest) = just (ParseTree (parsed-words-range-21 (string-append 0 (char-to-string '1'))) ::' rest , 2)
len-dec-rewrite {- P46-} ((Id "P46") :: _::_(InputChar '2') rest) = just (ParseTree (parsed-words-range-21 (string-append 0 (char-to-string '2'))) ::' rest , 2)
len-dec-rewrite {- P47-} ((Id "P47") :: _::_(InputChar '3') rest) = just (ParseTree (parsed-words-range-21 (string-append 0 (char-to-string '3'))) ::' rest , 2)
len-dec-rewrite {- P48-} ((Id "P48") :: _::_(InputChar '4') rest) = just (ParseTree (parsed-words-range-21 (string-append 0 (char-to-string '4'))) ::' rest , 2)
len-dec-rewrite {- P49-} ((Id "P49") :: _::_(InputChar '5') rest) = just (ParseTree (parsed-words-range-21 (string-append 0 (char-to-string '5'))) ::' rest , 2)
len-dec-rewrite {- P5-} ((Id "P5") :: _::_(ParseTree parsed-aws) rest) = just (ParseTree parsed-ws-plus-3 ::' rest , 2)
len-dec-rewrite {- P50-} ((Id "P50") :: _::_(InputChar '6') rest) = just (ParseTree (parsed-words-range-21 (string-append 0 (char-to-string '6'))) ::' rest , 2)
len-dec-rewrite {- P51-} ((Id "P51") :: _::_(InputChar '7') rest) = just (ParseTree (parsed-words-range-21 (string-append 0 (char-to-string '7'))) ::' rest , 2)
len-dec-rewrite {- P52-} ((Id "P52") :: _::_(InputChar '8') rest) = just (ParseTree (parsed-words-range-21 (string-append 0 (char-to-string '8'))) ::' rest , 2)
len-dec-rewrite {- P53-} ((Id "P53") :: _::_(InputChar '9') rest) = just (ParseTree (parsed-words-range-21 (string-append 0 (char-to-string '9'))) ::' rest , 2)
len-dec-rewrite {- P54-} ((Id "P54") :: _::_(InputChar 'A') rest) = just (ParseTree (parsed-words-range-21 (string-append 0 (char-to-string 'A'))) ::' rest , 2)
len-dec-rewrite {- P55-} ((Id "P55") :: _::_(InputChar 'B') rest) = just (ParseTree (parsed-words-range-21 (string-append 0 (char-to-string 'B'))) ::' rest , 2)
len-dec-rewrite {- P56-} ((Id "P56") :: _::_(InputChar 'C') rest) = just (ParseTree (parsed-words-range-21 (string-append 0 (char-to-string 'C'))) ::' rest , 2)
len-dec-rewrite {- P57-} ((Id "P57") :: _::_(InputChar 'D') rest) = just (ParseTree (parsed-words-range-21 (string-append 0 (char-to-string 'D'))) ::' rest , 2)
len-dec-rewrite {- P58-} ((Id "P58") :: _::_(InputChar 'E') rest) = just (ParseTree (parsed-words-range-21 (string-append 0 (char-to-string 'E'))) ::' rest , 2)
len-dec-rewrite {- P59-} ((Id "P59") :: _::_(InputChar 'F') rest) = just (ParseTree (parsed-words-range-21 (string-append 0 (char-to-string 'F'))) ::' rest , 2)
len-dec-rewrite {- P6-} ((Id "P6") :: (ParseTree parsed-aws) :: _::_(ParseTree parsed-ws-plus-3) rest) = just (ParseTree parsed-ws-plus-3 ::' rest , 3)
len-dec-rewrite {- P60-} ((Id "P60") :: _::_(InputChar 'G') rest) = just (ParseTree (parsed-words-range-21 (string-append 0 (char-to-string 'G'))) ::' rest , 2)
len-dec-rewrite {- P61-} ((Id "P61") :: _::_(InputChar 'H') rest) = just (ParseTree (parsed-words-range-21 (string-append 0 (char-to-string 'H'))) ::' rest , 2)
len-dec-rewrite {- P62-} ((Id "P62") :: _::_(InputChar 'I') rest) = just (ParseTree (parsed-words-range-21 (string-append 0 (char-to-string 'I'))) ::' rest , 2)
len-dec-rewrite {- P63-} ((Id "P63") :: _::_(InputChar 'J') rest) = just (ParseTree (parsed-words-range-21 (string-append 0 (char-to-string 'J'))) ::' rest , 2)
len-dec-rewrite {- P64-} ((Id "P64") :: _::_(InputChar 'K') rest) = just (ParseTree (parsed-words-range-21 (string-append 0 (char-to-string 'K'))) ::' rest , 2)
len-dec-rewrite {- P65-} ((Id "P65") :: _::_(InputChar 'L') rest) = just (ParseTree (parsed-words-range-21 (string-append 0 (char-to-string 'L'))) ::' rest , 2)
len-dec-rewrite {- P66-} ((Id "P66") :: _::_(InputChar 'M') rest) = just (ParseTree (parsed-words-range-21 (string-append 0 (char-to-string 'M'))) ::' rest , 2)
len-dec-rewrite {- P67-} ((Id "P67") :: _::_(InputChar 'N') rest) = just (ParseTree (parsed-words-range-21 (string-append 0 (char-to-string 'N'))) ::' rest , 2)
len-dec-rewrite {- P68-} ((Id "P68") :: _::_(InputChar 'O') rest) = just (ParseTree (parsed-words-range-21 (string-append 0 (char-to-string 'O'))) ::' rest , 2)
len-dec-rewrite {- P69-} ((Id "P69") :: _::_(InputChar 'P') rest) = just (ParseTree (parsed-words-range-21 (string-append 0 (char-to-string 'P'))) ::' rest , 2)
len-dec-rewrite {- P7-} ((Id "P7") :: _::_(ParseTree parsed-ws-plus-3) rest) = just (ParseTree parsed-ws ::' rest , 2)
len-dec-rewrite {- P70-} ((Id "P70") :: _::_(InputChar 'Q') rest) = just (ParseTree (parsed-words-range-21 (string-append 0 (char-to-string 'Q'))) ::' rest , 2)
len-dec-rewrite {- P71-} ((Id "P71") :: _::_(InputChar 'R') rest) = just (ParseTree (parsed-words-range-21 (string-append 0 (char-to-string 'R'))) ::' rest , 2)
len-dec-rewrite {- P72-} ((Id "P72") :: _::_(InputChar 'S') rest) = just (ParseTree (parsed-words-range-21 (string-append 0 (char-to-string 'S'))) ::' rest , 2)
len-dec-rewrite {- P73-} ((Id "P73") :: _::_(InputChar 'T') rest) = just (ParseTree (parsed-words-range-21 (string-append 0 (char-to-string 'T'))) ::' rest , 2)
len-dec-rewrite {- P74-} ((Id "P74") :: _::_(InputChar 'U') rest) = just (ParseTree (parsed-words-range-21 (string-append 0 (char-to-string 'U'))) ::' rest , 2)
len-dec-rewrite {- P75-} ((Id "P75") :: _::_(InputChar 'V') rest) = just (ParseTree (parsed-words-range-21 (string-append 0 (char-to-string 'V'))) ::' rest , 2)
len-dec-rewrite {- P76-} ((Id "P76") :: _::_(InputChar 'W') rest) = just (ParseTree (parsed-words-range-21 (string-append 0 (char-to-string 'W'))) ::' rest , 2)
len-dec-rewrite {- P77-} ((Id "P77") :: _::_(InputChar 'X') rest) = just (ParseTree (parsed-words-range-21 (string-append 0 (char-to-string 'X'))) ::' rest , 2)
len-dec-rewrite {- P78-} ((Id "P78") :: _::_(InputChar 'Y') rest) = just (ParseTree (parsed-words-range-21 (string-append 0 (char-to-string 'Y'))) ::' rest , 2)
len-dec-rewrite {- P79-} ((Id "P79") :: _::_(InputChar 'Z') rest) = just (ParseTree (parsed-words-range-21 (string-append 0 (char-to-string 'Z'))) ::' rest , 2)
len-dec-rewrite {- P80-} ((Id "P80") :: _::_(InputChar 'a') rest) = just (ParseTree (parsed-words-range-21 (string-append 0 (char-to-string 'a'))) ::' rest , 2)
len-dec-rewrite {- P81-} ((Id "P81") :: _::_(InputChar 'b') rest) = just (ParseTree (parsed-words-range-21 (string-append 0 (char-to-string 'b'))) ::' rest , 2)
len-dec-rewrite {- P82-} ((Id "P82") :: _::_(InputChar 'c') rest) = just (ParseTree (parsed-words-range-21 (string-append 0 (char-to-string 'c'))) ::' rest , 2)
len-dec-rewrite {- P83-} ((Id "P83") :: _::_(InputChar 'd') rest) = just (ParseTree (parsed-words-range-21 (string-append 0 (char-to-string 'd'))) ::' rest , 2)
len-dec-rewrite {- P84-} ((Id "P84") :: _::_(InputChar 'e') rest) = just (ParseTree (parsed-words-range-21 (string-append 0 (char-to-string 'e'))) ::' rest , 2)
len-dec-rewrite {- P85-} ((Id "P85") :: _::_(InputChar 'f') rest) = just (ParseTree (parsed-words-range-21 (string-append 0 (char-to-string 'f'))) ::' rest , 2)
len-dec-rewrite {- P86-} ((Id "P86") :: _::_(InputChar 'g') rest) = just (ParseTree (parsed-words-range-21 (string-append 0 (char-to-string 'g'))) ::' rest , 2)
len-dec-rewrite {- P87-} ((Id "P87") :: _::_(InputChar 'h') rest) = just (ParseTree (parsed-words-range-21 (string-append 0 (char-to-string 'h'))) ::' rest , 2)
len-dec-rewrite {- P88-} ((Id "P88") :: _::_(InputChar 'i') rest) = just (ParseTree (parsed-words-range-21 (string-append 0 (char-to-string 'i'))) ::' rest , 2)
len-dec-rewrite {- P89-} ((Id "P89") :: _::_(InputChar 'j') rest) = just (ParseTree (parsed-words-range-21 (string-append 0 (char-to-string 'j'))) ::' rest , 2)
len-dec-rewrite {- P9-} ((Id "P9") :: (ParseTree parsed-aws) :: _::_(ParseTree parsed-ows-star-4) rest) = just (ParseTree parsed-ows-star-4 ::' rest , 3)
len-dec-rewrite {- P90-} ((Id "P90") :: _::_(InputChar 'k') rest) = just (ParseTree (parsed-words-range-21 (string-append 0 (char-to-string 'k'))) ::' rest , 2)
len-dec-rewrite {- P91-} ((Id "P91") :: _::_(InputChar 'l') rest) = just (ParseTree (parsed-words-range-21 (string-append 0 (char-to-string 'l'))) ::' rest , 2)
len-dec-rewrite {- P92-} ((Id "P92") :: _::_(InputChar 'm') rest) = just (ParseTree (parsed-words-range-21 (string-append 0 (char-to-string 'm'))) ::' rest , 2)
len-dec-rewrite {- P93-} ((Id "P93") :: _::_(InputChar 'n') rest) = just (ParseTree (parsed-words-range-21 (string-append 0 (char-to-string 'n'))) ::' rest , 2)
len-dec-rewrite {- P94-} ((Id "P94") :: _::_(InputChar 'o') rest) = just (ParseTree (parsed-words-range-21 (string-append 0 (char-to-string 'o'))) ::' rest , 2)
len-dec-rewrite {- P95-} ((Id "P95") :: _::_(InputChar 'p') rest) = just (ParseTree (parsed-words-range-21 (string-append 0 (char-to-string 'p'))) ::' rest , 2)
len-dec-rewrite {- P96-} ((Id "P96") :: _::_(InputChar 'q') rest) = just (ParseTree (parsed-words-range-21 (string-append 0 (char-to-string 'q'))) ::' rest , 2)
len-dec-rewrite {- P97-} ((Id "P97") :: _::_(InputChar 'r') rest) = just (ParseTree (parsed-words-range-21 (string-append 0 (char-to-string 'r'))) ::' rest , 2)
len-dec-rewrite {- P98-} ((Id "P98") :: _::_(InputChar 's') rest) = just (ParseTree (parsed-words-range-21 (string-append 0 (char-to-string 's'))) ::' rest , 2)
len-dec-rewrite {- P99-} ((Id "P99") :: _::_(InputChar 't') rest) = just (ParseTree (parsed-words-range-21 (string-append 0 (char-to-string 't'))) ::' rest , 2)
len-dec-rewrite {- PM-} ((Id "PM") :: _::_(ParseTree parsed-pm) rest) = just (ParseTree (parsed-whichm (norm-whichm PM)) ::' rest , 2)
len-dec-rewrite {- RegTime-} ((Id "RegTime") :: (ParseTree (parsed-hour x0)) :: (InputChar ':') :: (ParseTree (parsed-minute x1)) :: (ParseTree parsed-ows) :: _::_(ParseTree (parsed-whichm x2)) rest) = just (ParseTree (parsed-time (norm-time (RegTime x0 x1 x2))) ::' rest , 6)
len-dec-rewrite {- Strt-} ((Id "Strt") :: (ParseTree parsed-ows) :: (ParseTree (parsed-evtname x0)) :: (InputChar '\n') :: (ParseTree (parsed-date x1)) :: (ParseTree parsed-ws) :: (ParseTree (parsed-timerange x2)) :: (ParseTree parsed-ows) :: (ParseTree (parsed-description x3)) :: _::_(ParseTree parsed-ows) rest) = just (ParseTree (parsed-strt (norm-strt (Strt x0 x1 x2 x3))) ::' rest , 10)
len-dec-rewrite {- TimeRange-} ((Id "TimeRange") :: (ParseTree (parsed-time x0)) :: (ParseTree parsed-ows) :: (ParseTree parsed-timesep) :: (ParseTree parsed-ows) :: _::_(ParseTree (parsed-time x1)) rest) = just (ParseTree (parsed-timerange (norm-timerange (TimeRange x0 x1))) ::' rest , 6)
len-dec-rewrite {- NoDescription-} (_::_(Id "NoDescription") rest) = just (ParseTree (parsed-description (norm-description NoDescription)) ::' rest , 1)
len-dec-rewrite {- P8-} (_::_(Id "P8") rest) = just (ParseTree parsed-ows-star-4 ::' rest , 1)
len-dec-rewrite {- Posinfo-} (_::_(Posinfo n) rest) = just (ParseTree (parsed-posinfo (ℕ-to-string n)) ::' rest , 1)
len-dec-rewrite x = nothing

rrs : rewriteRules
rrs = record { len-dec-rewrite = len-dec-rewrite }
