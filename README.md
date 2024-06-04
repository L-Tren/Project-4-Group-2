# Project-4-Group-2

# Title

![Image of hand holding grapes](Images/hands_grapes.jpg)

## 1. Group Members

- Fabiano Santos
- Kai Huang
- Lewis Trenerry
- Sonal Bhosle

## 2. Overview

Imagine being able to predict how your customers would rate your product even before it hits the market. Would they recognise it as a top-tier offering? Will it gain widespread acceptance?

Our project is designed to do just that — predict public perception of wine quality based on a set of defining characteristics. This predictive insight offers a game-changing advantage over competitors. With this knowledge, you can craft more effective marketing campaigns, set optimal pricing to maximise sales, and make strategic investments in high-ROI products. Unlock these competitive advantages and propel your business to new heights with our innovative approach.

### 2.1 Limitation of this project

While this project leverages an extensive dataset of over 6,000 records classified by wine experts, it focuses exclusively on the Portuguese "Vinho Verde" wine. To extend the prediction model to other wine regions, it is essential to conduct similar studies incorporating the relevant varieties of wines from those areas. This ensures that the model accurately reflects the unique characteristics and quality indicators specific to different wine types.

## 3. Resources

- PostgreSQL
- Python
- VS Code
- Jupyter Notebook

## 4. Instructions

Explain how to reproduce the data

## 5. Data Model Implementation

### 5.1 A Python script initialises, trains, and evaluates a model

_TBC_

### 5.2 The data is cleaned, normalised, and standardised prior to modelling

- CSV file for red and white wine respectively was obtained from UC Irvine Machine Learning Repository \*(Cortez et al., 2009)
- Both CSV files were read and stored in a Pandas Dataframe
- A column was added to each Dataframe to specify the wine 'type' (red or white).
- A 'Wine Quality Categorisation' column was added to each data frame. This uses a binary classification of quality (1) or non-quality (0) for each respective wine. Quality was determined to be a score of greater than or equal to 6 in the dataset.
- After the binary classification, the original 'quality' column was then dropped from the dataframes as it is now redundant for our purposes.
- The data was then exported to CSV format.

### 4.3 The model utilises data retrieved from SQL or Spark

Red and white wine sql scripts were generated to create tables with columns corresponding to various wine properties.

SQL was utilised in order to efficiently store and query data the data before running through the machine learning model, ensuring the data integrity is maintained and enabling collaboration between the team.

### 4.4 The model demonstrates meaningful predictive power at least 75% classification accuracy or 0.80 R-squared.

_TBC_

## 5. Data Model Optimisation

### The model optimisation and evaluation process showing iterative changes made to the model and the resulting changes in model performance is documented in either a CSV/Excel table or in the Python script itself

_TBC_

### 5.1 Overall model performance is printed or displayed at the end of the script

_TBC_

## 6. Conclusion

_TBC_

## 7. Data Sources

This project utilises data collected from the following sources:

- Cortez,Paulo, Cerdeira,A., Almeida,F., Matos,T., and Reis,J.. (2009). Wine Quality. UCI Machine Learning Repository. https://doi.org/10.24432/C56S3T.

## 8. Other References

To complete this project, our group sought assistance from the following:

-
