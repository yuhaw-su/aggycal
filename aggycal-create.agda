{- some code provided by Aaron Stump from PLC HW9 -}

module aggycal-create where

import parse
open import lib
open import aggycal-types
import aggycal

module parsem = parse aggycal.gratr2-nt ptr
open parsem
open parsem.pnoderiv aggycal.rrs aggycal.aggycal-rtn
open import run ptr
open noderiv {- from run.agda -}

open import evt-info
open import addit-evt-info

extract-addit-evt-info : other → 𝕃 addit-evt-info
extract-addit-evt-info (Description d o) = (desc d) :: (extract-addit-evt-info o)
extract-addit-evt-info OtherNil = []

add-allday : 𝔹 → addit-evt-info
add-allday b = allday b

{- for all-day substitute -}
midnight : aTime
midnight = "00" , "00"

adjust-time-with-ampm : time → aTime
adjust-time-with-ampm (MilitaryTime hour min) = hour , min
adjust-time-with-ampm (RegTime hour min ampm) with ampm
... | AM = hour , min
... | PM = (ℕ-to-string ((string-to-ℕ0 hour) + 12)) , min

extract-datetimes : daterange → timerange → datetime × datetime
extract-datetimes dates times with dates
extract-datetimes dates times | AmericanDate m d y with times
... | AllDayRange = ((y , m , d) , midnight) , ((y , m , d) , midnight)
... | (TimeRange sTime eTime) = ((y , m , d) , adjust-time-with-ampm sTime) , ((y , m , d) , adjust-time-with-ampm eTime)
extract-datetimes dates times | AmericanDateRange m1 d1 y1 m2 d2 y2 with times
... | AllDayRange = ((y1 , m1 , d1) , midnight) , ((y2 , m2 , d2) , midnight)
... | (TimeRange sTime eTime) = ((y1 , m1 , d1) , adjust-time-with-ampm sTime) , ((y2 , m2 , d2) , adjust-time-with-ampm eTime)
extract-datetimes dates times | GlobalDate y m d with times
... | AllDayRange = ((y , m , d) , midnight) , ((y , m , d) , midnight)
... | (TimeRange sTime eTime) = ((y , m , d) , adjust-time-with-ampm sTime) , ((y , m , d) , adjust-time-with-ampm eTime)
extract-datetimes dates times | GlobalDateRange y1 m1 d1 y2 m2 d2 with times
... | AllDayRange = ((y1 , m1 , d1) , midnight) , ((y2 , m2 , d2) , midnight)
... | (TimeRange sTime eTime) = ((y1 , m1 , d1) , adjust-time-with-ampm sTime) , ((y2 , m2 , d2) , adjust-time-with-ampm eTime)

strt-to-evt-info : strt → evt-info
strt-to-evt-info (Strt name dates times addit-info) with extract-datetimes dates times
... | sDT , eDT with times
... | AllDayRange = evt name sDT eDT ((add-allday tt) :: (extract-addit-evt-info addit-info))
... | (TimeRange x x₁) = evt name sDT eDT (extract-addit-evt-info addit-info)

process-strt : strt → string
process-strt s =
  "BEGIN:VCALENDAR\n" ^
  "PRODID:aggycal woot\n" ^
  "VERSION:2.0\n" ^
  "CALSCALE:GREGORIAN\n" ^
  evt-info-to-string (strt-to-evt-info s) ^
  "END:VCALENDAR\n"

process : Run → IO ⊤
process (ParseTree (parsed-strt p) :: []) =
  writeFile ("testing" ^ ".ics") (process-strt p)
process r = putStr ("Parsing failure (run with -" ^ "-showParsed).\n")

putStrRunIf : 𝔹 → Run → IO ⊤
putStrRunIf tt r = putStr (Run-to-string r) >> putStr "\n"
putStrRunIf ff r = return triv

processArgs : (showRun : 𝔹) → (showParsed : 𝔹) → 𝕃 string → IO ⊤
processArgs showRun showParsed (input-filename :: []) = (readFiniteFile input-filename) >>= processText
  where processText : string → IO ⊤
        processText x with runRtn (string-to-𝕃char x)
        processText x | s with s
        processText x | s | inj₁ cs = putStr "Characters left before failure : " >> putStr (𝕃char-to-string cs) >> putStr "\nCannot proceed to parsing.\n"
        processText x | s | inj₂ r with putStrRunIf showRun r | rewriteRun r
        processText x | s | inj₂ r | sr | r' with putStrRunIf showParsed r'
        processText x | s | inj₂ r | sr | r' | sr' = sr >> sr' >> process r'

processArgs showRun showParsed ("--showRun" :: xs) = processArgs tt showParsed xs
processArgs showRun showParsed ("--showParsed" :: xs) = processArgs showRun tt xs
processArgs showRun showParsed (x :: xs) = putStr ("Unknown option " ^ x ^ "\n")
processArgs showRun showParsed [] = putStr "Please run with the name of a file to process.\n"

main : IO ⊤
main = getArgs >>= processArgs ff ff
