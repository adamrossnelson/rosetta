# Simple JSON Data Rosetta
## Introduction

The files `RhymeAPI.do` (Stata) `RhymeAPI.py` (Python) and `RhymeAPI.r` (r) provide a rosetta stone for the following algorithm.

1 Get & display JSON data
2 Convert to dataset (Stata) | dataframe (Python and r)
3 Display JSON as a dataset | dataframe
3 Save data in Stata and csv formats

## Usage

To run from R use:
````
source("https://raw.githubusercontent.com/adamrossnelson/rosetta/master/rhyme/RhymeAPI.r")
````
To run from Stata use:
````
do "https://raw.githubusercontent.com/adamrossnelson/rosetta/master/rhyme/RhymeAPI.do"
````
Output files will save to the working directory.