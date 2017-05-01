module addit-evt-info where

open import lib
open import aggycal-types

aDate : Set
aDate = year × month × day

aDateRange : Set
aDateRange = aDate × aDate

aTime : Set
aTime = hour × minute

aTimeRange : Set
aTimeRange = aTime × aTime

data addit-evt-info : Set where    {- additional parameters -}

  allday : 𝔹 → addit-evt-info

  desc   : words → addit-evt-info

addit-evt-info-to-string : addit-evt-info → string
addit-evt-info-to-string (allday yes) with yes
... | tt = "All-day: YES"
... | ff = "All-day: NO"
addit-evt-info-to-string (desc d) = "Description: " ^ d

addit-evt-info-list-to-string : 𝕃 addit-evt-info → string
addit-evt-info-list-to-string [] = ""
addit-evt-info-list-to-string (h :: t) = addit-evt-info-to-string h ^ addit-evt-info-list-to-string t
