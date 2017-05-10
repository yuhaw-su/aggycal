module addit-evt-info where

open import lib
open import aggycal-types

aDate : Set
aDate = year × month × day

aTime : Set
aTime = hour × minute

datetime : Set
datetime = aDate × aTime

data addit-evt-info : Set where    {- additional parameters -}
  desc   : words → addit-evt-info
  recur  : frequency → aDate → addit-evt-info

{- for all-day indication -}
midnight : aTime
midnight = "00" , "00"

aDate-to-string : aDate → string
aDate-to-string (y , m , d) = y ^ m ^ d

aTime-to-string : aTime → string
aTime-to-string (hour , min) = hour ^ min

datetime-to-string : datetime → string
datetime-to-string ((y , m , d) , (hour , min)) =
  y ^ m ^ d ^ "T" ^ hour ^ min ^ "00"

addit-evt-info-to-string : addit-evt-info → string
addit-evt-info-to-string (desc d) = "DESCRIPTION:" ^ d ^ "\n"
addit-evt-info-to-string (recur f d) with f
... | Monthly = "RRULE:FREQ=MONTHLY;UNTIL=" ^ (datetime-to-string (d , midnight)) ^ "\n"
... | Weekly = "RRULE:FREQ=WEEKLY;UNTIL=" ^ (datetime-to-string (d , midnight)) ^ "\n"
... | Yearly = "RRULE:FREQ=YEARLY;UNTIL=" ^ (datetime-to-string (d , midnight)) ^ "\n"

addit-evt-info-list-to-string : 𝕃 addit-evt-info → string
addit-evt-info-list-to-string [] = ""
addit-evt-info-list-to-string (h :: t) = addit-evt-info-to-string h ^ addit-evt-info-list-to-string t
