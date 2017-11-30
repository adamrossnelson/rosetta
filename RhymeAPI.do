// Beginning of project for Python, Stata, R roesetta stone.
// Gets JSON data from datamuse api. Builds dataset.

set more off
clear all

// Use api to get words that rhyme with "lost"
scalar rhyme = fileread("http://api.datamuse.com/words?rel_rhy=lost")
// Display the results
di rhyme
// Generate variables
gen str75 word = ""
gen str75 numSyllables = ""
// Importa JSON data
insheetjson using "http://api.datamuse.com/words?rel_rhy=lost", col("word" "numSyllables")
// Compress to save file space
compress
// Destring & rename syllabus
rename numSyllables sylbs
destring sylbs, replace
