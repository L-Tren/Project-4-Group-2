# Project-4-Group-2
## Group Members
- Fabiano Santos
- Kai Huang
- Lewis Trenerry
- Sonal Bhosle

## Overview

*TBC*

## Data Model Implementation 

### A Python script initialises, trains, and evaluates a model 

*TBC*

### The data is cleaned, normalised, and standardised prior to modelling 

- CSV file for red and white wine respectively was obtained from UC Irvine Machine Learning Repository *(Cortez et al., 2009)
- Both CSV files were read and stored in a Pandas Dataframe
- A column was added to each Dataframe to specify the wine 'type' (red or white).
- A 'Wine Quality Categorisation' column was added to each data frame. This uses a binary classification of quality (1) or non-quality (0) for each respective wine. Quality was determined to be a score of greater than or equal to 6 in the dataset.
- After the binary classification, the original 'quality' column was then dropped from the dataframes as it is now redundant for our purposes.
- The data was then exported to CSV format. 

### The model utilises data retrieved from SQL or Spark

Red and white wine sql scripts were generated to create tables with columns corresponding to various wine properties. 

SQL was utilised in order to efficiently store and query data the data before running through the machine learning model, ensuring the data integrity is maintained and enabling collaboration between the team.

### The model demonstrates meaningful predictive power at least 75% classification accuracy or 0.80 R-squared.

*TBC*

## Data Model Optimisation 

### The model optimisation and evaluation process showing iterative changes made to the model and the resulting changes in model performance is documented in either a CSV/Excel table or in the Python script itself

*TBC*

### Overall model performance is printed or displayed at the end of the script 

*TBC*

## Conclusion

*TBC*

## Reference List
Cortez,Paulo, Cerdeira,A., Almeida,F., Matos,T., and Reis,J.. (2009). Wine Quality. UCI Machine Learning Repository. https://doi.org/10.24432/C56S3T.
