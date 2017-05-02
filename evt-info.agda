module evt-info where

open import lib
open import aggycal-types
open import addit-evt-info

data evt-info : Set where
  evt : words {- event name -} →
        datetime {- start DT -} →
        datetime {- end DT  -} →
        𝕃 addit-evt-info {- other not required event info -} →
        evt-info

evt-info-to-string : evt-info → string
evt-info-to-string (evt name (sDate , sTime) (eDate , eTime) l) with sTime , eTime
... | midnight , ("00" , "00") = {- repeat variable error if 'midnight' is used twice -}
  "BEGIN:VEVENT\n" ^
  "SUMMARY:" ^ name ^ "\n" ^
  "DTSTART;VALUE=DATE:" ^ (aDate-to-string sDate) ^ "\n" ^
  "DTEND;VALUE=DATE:" ^ (aDate-to-string eDate) ^ "\n" ^
  (addit-evt-info-list-to-string l) ^
  "END:VEVENT\n"
... | _ , _ = 
  "BEGIN:VEVENT\n" ^
  "SUMMARY:" ^ name ^ "\n" ^
  "DTSTART:" ^ (aDate-to-string sDate) ^ "T" ^ (aTime-to-string sTime) ^ "00\n" ^
  "DTEND:" ^ (aDate-to-string eDate) ^ "T" ^ (aTime-to-string eTime) ^ "00\n" ^
  (addit-evt-info-list-to-string l) ^
  "END:VEVENT\n"

𝕃evt-info-to-string : 𝕃 evt-info → string
𝕃evt-info-to-string [] = ""
𝕃evt-info-to-string (x :: l) = (evt-info-to-string x) ^ (𝕃evt-info-to-string l)
