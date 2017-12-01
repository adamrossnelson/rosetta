# Revision History:
# 01DEC2017 - Adam Ross Nelson - Original build
# Description:
# Rosetta project for Python, Stata, R.
# Gets JSON data from datamuse api. 
# Builds dataset. Saves in csv and dta format.

library(readr)
library(jsonlite)
library(readstata13)

# Use api to get words that rhyme with "lost"
rhyme = readLines("http://api.datamuse.com/words?rel_rhy=lost")
# Display the JSON results
print(rhyme)

# Import JSON data
rhyme_df <- fromJSON(rhyme)
# Display the results as a data set
print(rhyme_df)

# Save files
save.dta13(rhyme_df, "RhymeResultR.dta")
write.table(rhyme_df, file = "RhymeResultR.csv", sep=",")
