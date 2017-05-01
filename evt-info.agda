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
  
{- used for testing purposes -}
evt-info-to-string : evt-info → string
evt-info-to-string (evt name ((sYear , sMonth , sDay) , (sHour , sMin)) ((eYear , eMonth , eDay) , (eHour , eMin)) l) =
  "BEGIN:VEVENT\n" ^
  "SUMMARY:" ^ name ^ "\n" ^
  "DTSTART:" ^ sYear ^ sMonth ^ sDay ^ "T" ^ sHour ^ sMin ^ "00\n" ^
  "DTEND:" ^ eYear ^ eMonth ^ eDay ^ "T" ^ eHour ^ eMin ^ "00\n" ^
  (addit-evt-info-list-to-string l) ^
  "END:VEVENT\n"
  

