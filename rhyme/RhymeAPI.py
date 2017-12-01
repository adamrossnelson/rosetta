# Revision History:
# 01DEC2017 - Adam Ross Nelson - Original build
# Description:
# Rosetta project for Python, Stata, R.
# Gets JSON data from datamuse api. 
# Builds dataset. Saves in csv and dta format.

import requests
import pandas

# Use api to get words that rhyme with "lost"
rhyme = requests.get('http://api.datamuse.com/words?rel_rhy=lost')
# Display the JSON results
print(rhyme.text)

# Import JSON data
rhyme_df = pandas.read_json(rhyme.text)
# Display the results as a data set
with pandas.option_context("display.max_rows",1000): print(rhyme_df)

# Save files
rhyme_df.to_stata('RhymeResultPy.dta')
rhyme_df.to_csv('RhymeResultPy.csv')
