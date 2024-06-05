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

This analysis was based on CSV files downloaded from the UC Irvine Machine Learning Repository website (Cortez et al., 2009). 

To reproduce this project and navigate accordingly, please follow the steps below in the order they are presented:

1. Load the red and white wine csv files in the Resources folder into a pandas dataframe
2. Add a 'Type' column to distinguish between the red and white wine types
3. Add a binary 'Wine Quality Categorisation' column. Wine greater than or equal to a wine quality of 6 is determined to have a binary classification of 1, all other wine is therefore classified as 0. These binary classifications were determined at the discretion of the group.
4. Save combined data into a CSV file
5. Create a new SQL Database in PostgreSQL.
6. Create the tables in your new database using the following files from the SQL Files folder:
    a. RedTable.sql
    b. WhiteTable.sql
    c. RedWhiteView.sql
7. Import the following CSV files:
   a. winequality-red.csv to the Red table
   b. winequality-white.csv to the White table
8. Run the 3.RedWhiteView.sql using PostgreSQL.


The _2.ml_model_code_wine.ipynb_ file connects to the SQL database. You must provide your username, password and port of the PostgreSQL server.

Once it is successfully connected, the code will generate a combined wines DataFrame.

This dataframe forms the basis of the machine learning model, refer to section 5 for futher details on the Data Model Implementation. 


## 5. Data Model Implementation

### 5.1 A Python script initialises, trains, and evaluates a model

Numerous python scripts were engineered. The dataset was split into training (70%) and testing (30%) sets as per industry norms. The data was also converted to floats, to enable better precision and consistency assistig with ensuring compatibility with machine learning algorithms.The various models were trained on the training data with various levels of epochs.


### 5.2 The data is cleaned, normalised, and standardised prior to modelling

The wines data frame is cleaned to remove columns not utilised by the machine learning model, being:
- ID
- Type
- Quality

Data is then split into features and target arrays. The X DataFrame contains all cleaned data  excluding the 'quality_categorisation' column, whilst the 'y' DataFrame contains the values of the 'quality_categorisation' column.

StandardScaler was utilised to transform the training and test datasets, helping the machine learning algorithm to adjust the standardized data to make it more reliable and easier to work with.

### 5.3 The model utilises data retrieved from SQL or Spark

As outlined in section 4, Red and White wine sql scripts were generated to create tables with columns corresponding to various wine properties.

SQL was utilised in order to efficiently store and query data the data before running through the machine learning model, ensuring the data integrity is maintained and enabling collaboration between the team.

### 5.4 The model demonstrates meaningful predictive power at least 75% classification accuracy or 0.80 R-squared.

Numerous amounts of trial and error transpired using different machine learning model parameters. Although there were instances of an accuracy score of 75% obtained, the models could not consistently obtain such a score, albeit close to the desired meaningful predictive power classification accuracy.

## 6. Data Model Optimisation

### The model optimisation and evaluation process showing iterative changes made to the model and the resulting changes in model performance is documented in either a CSV/Excel table or in the Python script itself

| Model                                    | Architecture                                                                                                                | Compilation                                                                                         | Training                                              |
|------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------|-------------------------------------------------------|
| **1. Initial Model**                     | - Three  layers with 12, 8, and 4 units <br> -  ReLU activation<br> - Output layer with 1 unit <br> - Sigmoid activation output  | - Optimizer: Adam<br> - Loss: Binary cross-entropy<br> - Metrics: Accuracy                        | - 100 epochs                                          |
| **2. Model with One Less Hidden Layer**  | - Two  layers with 12 and 8 units <br> - ReLU activation<br> - Output layer with 1 unit <br> - Sigmoid activation output  | As per  Initial Model                                                                           | As per Initial Model                             |
| **3. Model with Increased Units and Tanh Activation** | - Two  layers with 300 and 200 units <br> -  Tanh activation <br> - Output layer with 1 unit <br> - Sigmoid activation output | As per Initial Model                                                                           | As per Initial Model                            |
| **4. Model with Increased Units, Tanh Activation, and L2 Regularization** | - Two  layers with 300 and 200 units <br> - Tanh activation <br> - L2 regularization<br> - Output layer with 1 unit <br> - Sigmoid activation output | As per Initial Model                                                                            | As per Initial Model                             |
| **5. Model with Dropout and L2 Regularization** | - Three  layers with 120, 80, and 40 units <br> - ReLU activation <br> - L2 regularization <br> - Dropout<br> - Output layer with 1 unit <br> - Sigmoid activation output | As per Initial Model                                                                            | As per Initial Model                             |
| **6. Model with One Less Hidden Layer and Batch Size** | - Two  layers with 12 and 8 units, <br> - ReLU activation<br> - Output layer with 1 unit <br> - Sigmoid activation output   | As per Initial Model                             | As per Initial Model with Batch size set to 10                             |
| **7. Model with Multiple Dropout Layers and Regularization** | - Input layer with 7 units <br> - Tanh activation.<br> - Five  layers with 1, 6, 1, 6, and 6 units <br> - L2 regularization <br> - Dropout<br> - Output layer with 1 unit <br> Sigmoid activation output | As per Initial Model                                                                           | - 10 epochs<br> - Added early stopping and learning rate reduction callbacks<br> - Validation data used for training<br> - Batch size set to 32 |


### 6.1 Overall model performance is printed or displayed at the end of the script

_TBC_

## 7. Conclusion

_TBC_

## 8. Data Sources

This project utilises data collected from the following sources:

- Cortez,Paulo, Cerdeira,A., Almeida,F., Matos,T., and Reis,J.. (2009). Wine Quality. UCI Machine Learning Repository. https://doi.org/10.24432/C56S3T.

## 8. Other References

To complete this project, our group sought assistance from the following:

-
