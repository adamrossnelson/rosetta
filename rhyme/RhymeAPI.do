// Revision History:
// 01DEC2017 - Adam Ross Nelson - Original build
// Description:
// Rosetta project for Python, Stata, R.
// Gets JSON data from datamuse api. 
// Builds dataset. Saves in csv and dta format.

set more off
clear all

// Use api to get words that rhyme with "lost"
scalar rhyme = fileread("http://api.datamuse.com/words?rel_rhy=lost")
// Display the JSON results
di rhyme
// Generate variables
gen str75 word = ""
gen str75 numSyllables = ""
// Import JSON data
insheetjson using "http://api.datamuse.com/words?rel_rhy=lost", col("word" "numSyllables")
// Display the results as a data set
list
// Compress to save file space
compress
// Destring & rename syllables
rename numSyllables sylbs
destring sylbs, replace

// Save files
saveold RhymeResultStata.dta, replace version(13)
export delimited using RhymeResultStata.csv, replace
