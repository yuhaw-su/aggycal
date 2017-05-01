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

{-idlist-to-𝕃 : idlist → 𝕃 id
idlist-to-𝕃 (IdListEnd id) = [ id ]
idlist-to-𝕃 (IdListNext id idlist) = id :: idlist-to-𝕃 idlist
idlist-to-𝕃 IdListNil = []

edges-to-graph-t : graph-t → edges → graph-t
edges-to-graph-t g EdgesEnd = g
edges-to-graph-t g (EdgesNext id idlist edges) = edges-to-graph-t (𝕃trie-add* g id (idlist-to-𝕃 idlist)) edges

strt-to-mg : strt → mg
strt-to-mg (Strt roots edges) with (idlist-to-𝕃 roots)
... | r = mkmg r empty-stringset r (edges-to-graph-t empty-trie edges)-}

strt-to-evt-info : strt → evt-info
strt-to-evt-info (Strt name daterange timerange addit-info) with timerange
strt-to-evt-info (Strt name daterange timerange₁ addit-info) | AllDayRange = ?
strt-to-evt-info (Strt name daterange timerange₁ addit-info) | TimeRange x x₁ = ?

process-strt : strt → string
process-strt s = ""

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
