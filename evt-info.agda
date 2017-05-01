module evt-info where

open import lib
open import aggycal-types
open import addit-evt-info

data evt-info : Set where
  evt : words {- event name -} →
        aDateRange {- event date -} →
        aTimeRange {- event start and end times -} →
        𝕃 addit-evt-info {- other not required event info -} →
        evt-info
  
{- used for testing purposes -}
evt-info-to-string : evt-info → string
evt-info-to-string (evt name ((sYear , sMonth , sDay) , (eYear , eMonth , eDay)) ((sHour , sMin) , (eHour , eMin)) l) =
  "Event Name: " ^ name ^
  "\nStart Date: " ^ sYear ^ "/" ^ sMonth ^ "/" ^ sDay ^
  "\nEnd Date: " ^ eYear ^ "/" ^ eMonth ^ "/" ^ eDay ^
  "\nStart Time: " ^ sHour ^ ":" ^ sMin ^
  "\nEnd Time: " ^ eHour ^ ":" ^ eMin ^
  addit-evt-info-list-to-string l

