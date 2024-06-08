# Project-4-Group-2

# Wine Quality Evaluation

![Image of hand holding grapes](Images/wine_glasses.jpg)

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

1. Load the red and white wine csv files in the Resources folder into a pandas dataframe.
2. Add a 'Type' column to distinguish between the red and white wine types.
3. Add a binary 'Wine Quality Categorisation' column. Wine greater than or equal to a wine quality of 6 (meaning it is a quality wine) is determined to have a binary classification of 1, all other wine is therefore classified as 0 (non-quality wine). These binary classifications were determined at the discretion of Group 2.
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

Data is then split into features and target arrays. The X DataFrame contains all cleaned data excluding the 'quality_categorisation' column, whilst the 'y' DataFrame contains the values of the 'quality_categorisation' column.

StandardScaler was utilised to transform the training and test datasets, helping the machine learning algorithm to adjust the standardized data to make it more reliable and easier to work with.

### 5.3 The model utilises data retrieved from SQL or Spark

As outlined in section 4, Red and White wine sql scripts were generated to create tables with columns corresponding to various wine properties.

SQL was utilised in order to efficiently store and query data the data before running through the machine learning model, ensuring the data integrity is maintained and enabling collaboration between the team.

### 5.4 The model demonstrates meaningful predictive power at least 75% classification accuracy or 0.80 R-squared.

Numerous amounts of trial and error transpired using different machine learning model parameters. Although there were instances of an accuracy score of 75% obtained, the models could not consistently obtain such a score, albeit close to the desired meaningful predictive power classification accuracy.

## 6. Data Model Optimisation

### 6.1 The model optimisation and evaluation process showing iterative changes made to the model and the resulting changes in model performance is documented in either a CSV/Excel table or in the Python script itself

A summary of some of the attempts is outlined in the table below. This shows the evolution of the machine learning code and different techniques used to achieve an accuracy score over 75%.

| Attempt                                                                     | Architecture                                                                                                                                                                                            | Compilation                                                                | Training                                                                                                                                        |
| ------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------- |
| **1. Initial Model**                                                      | - Three layers with 12, 8, and 4 units <br> - ReLU activation<br> - Output layer with 1 unit <br> - Sigmoid activation output                                                                           | - Optimizer: Adam<br> - Loss: Binary cross-entropy<br> - Metrics: Accuracy | - 100 epochs                                                                                                                                    |
| **2. Model with One Less Hidden Layer**                                   | - Two layers with 12 and 8 units <br> - ReLU activation<br> - Output layer with 1 unit <br> - Sigmoid activation output                                                                                 | As per Initial Model                                                       | As per Initial Model                                                                                                                            |
| **3. Model with Increased Units and Tanh Activation**                     | - Two layers with 300 and 200 units <br> - Tanh activation <br> - Output layer with 1 unit <br> - Sigmoid activation output                                                                             | As per Initial Model                                                       | As per Initial Model                                                                                                                            |
| **4. Model with Increased Units, Tanh Activation, and L2 Regularization** | - Two layers with 300 and 200 units <br> - Tanh activation <br> - L2 regularization<br> - Output layer with 1 unit <br> - Sigmoid activation output                                                     | As per Initial Model                                                       | As per Initial Model                                                                                                                            |
| **5. Model with Dropout and L2 Regularization**                           | - Three layers with 120, 80, and 40 units <br> - ReLU activation <br> - L2 regularization <br> - Dropout<br> - Output layer with 1 unit <br> - Sigmoid activation output                                | As per Initial Model                                                       | As per Initial Model                                                                                                                            |
| **6. Model with One Less Hidden Layer and Batch Size**                    | - Two layers with 12 and 8 units, <br> - ReLU activation<br> - Output layer with 1 unit <br> - Sigmoid activation output                                                                                | As per Initial Model                                                       | As per Initial Model with Batch size set to 10                                                                                                  |
| **7. Model with Multiple Dropout Layers and Regularization**              | - Input layer with 7 units <br> - Tanh activation.<br> - Five layers with 1, 6, 1, 6, and 6 units <br> - L2 regularization <br> - Dropout<br> - Output layer with 1 unit <br> Sigmoid activation output | As per Initial Model                                                       | - 10 epochs<br> - Added early stopping and learning rate reduction callbacks<br> - Validation data used for training<br> - Batch size set to 32 |

### 6.2 Overall model performance is printed or displayed at the end of the script

Each iteration of the machine learning code used model loss and model accuracy evaluation code using the test data set in order to determine the models accuracy. This would assist in determining whether the trial and error was working, and inform updates to try and improve the accuracy. After altering the model various time with different architecture, consistently obtaining a score above 75% was not attainable.

### 6.3 Hypermodel build

Hyperparameter tuning code was written using Keras Tuner's Random Search. This indicated the most optimal hyper model, by providing tunable hidden and output layers. The tuner searched the optimal hyperparameters by training on X_train and y_train data. It was reassuring that based on the data, a model over 75% was achievable. This utlimately led the group to investigate optimising the model through 'binning'

### 6.4 Optimum Model - Binning method

Binning was utilised to try and improve the neural network model's performance. The logic behind the use of binning was to still efficiently capture patterns and trends in the data, reducing possibleoverfitting, and mitigating the impact of outliers, and skewed distributions. 

The proess by which this was undertaken is summarised in the table below.

| Process                                | Analysis                                                                                             |
|----------------------------------------|------------------------------------------------------------------------------------------------------|
| **1. Binning Data**                    | - Define bin edges and create new column for `free_sulfur_dioxide`, `density`, and `residual_sugar` features.<br> - Perform binning and create new columns: `free_sulfur_binned`, `density_binned`, `sugar_binned`.    |
| **2. Cleaning Data**                   | - Remove unnecessary columns: `free_sulfur_dioxide`, `density`, `free_sulfur_binned`, `density_binned`, `residual_sugar`, `sugar_binned`.<br> - Display the cleaned dataframe. |
| **3. Encoding Binned Columns**         | - Encode the binned columns: `free_sulfur_binned`, `density_binned`, `sugar_binned`.<br> - Concatenate the encoded columns with the cleaned dataframe.        |
| **4. Preparing Data for Modeling**     | - Split  data into features (`X`) and target (`y`).<br> - Standardize using `StandardScaler`.<br> - Split data into training and testing sets.  |
| **5. Building and Training the Model** | - Define a neural network model with two hidden layers (200 and 150 units) and 'relu' activation. <br> - Output layer using `sigmoid` activation.<br> - Compile the model using the Adam optimizer, binary cross-entropy loss function, and accuracy metrics.<br> - Train the model on the training data for 100 epochs.<br> - Evaluate the model on the test data and output the loss and accuracy.  |

The approach of binning the wine data led to an improved model accuracy score, successfully consistently surpassing 75%, which had not been achieved in previous attempts.


## 7. Conclusion

The implementation of binning in our neural network model imrpoved the predictive capabilities of the machine learning model, consistently achieving accuracy scores above 75%. The quality categorisation of Portuguese "Vinho Verde" wine quality, could accurately be modelled when using the approach of grouping key categories including free sulfur dioxide, density, and residual sugar. The model effectively captured trends and patterns, whilst mitigating previous overfitting issues, and handled outliers and skewed distributions naturally occuring in the wide range of wine data.

The predictive model could provide benefits to wine businesses and the industry as a whole who operate in the "Vinho Verde" market. By accurately predicting public perception of wine quality, businesses can craft more effective marketing campaigns, set optimal pricing strategies to maximize sales, and make informed investments in high-ROI products. Furthermore, the ability to accurately predict wine quality empowers producers to make more informed decisions before the long, intense vintage process, ultimately assisting with product standards, enhancing brand reputation and catering to consumer desires.

In conclusion, the various approaches to writing the neural network machine learning code ultimately led to a model wich may provide a a competitive advantage for individual businesses but also contributes to the advancement and sustainability of the wider wine industry by assisting decision making and quality improvement or control initiatives.

## 8. References

### 8.1 Primary Data Source

This project utilises data collected from the following sources:

- Cortez,Paulo, Cerdeira,A., Almeida,F., Matos,T., and Reis,J.. (2009). Wine Quality. UCI Machine Learning Repository. https://doi.org/10.24432/C56S3T.

### 8.2 Other References

- edX Boot Camps. (2024). Xpert Learning Assistant. Retrieved June 4, 2024, from https://bootcampspot.instructure.com/courses/4781/external_tools/313

- OpenAI. (2024). ChatGPT. Retrieved May 30, 2024 from https://openai.com/chatgpt

- TensorFlow. (2023). Keras Tuner. TensorFlow. Retrieved June 4, 2024, from https://www.tensorflow.org/tutorials/keras/keras_tuner

- Stack Exchange (2024). What is batch size in neural network? Stack Exchange. Retrieved June 6, 2024, from https://stats.stackexchange.com/questions/153531/what-is-batch-size-in-neural-network

- University of Adelaide. (2023). 04-Ins_AutoOptimisation. GitLab. Retrieved June 6, 2024, from https://git.bootcampcontent.com/University-of-Adelaide/UADEL-VIRT-DATA-PT-12-2023-U-LOLC/-/tree/main/21-Neural-Networks-Deep-Learning/2/Activities/04-Ins_AutoOptimisation?ref_type=heads

- University of Adelaide. (2023). 05-Stu_TuneUp. GitLab. Retrieved June 3, 2024, from https://git.bootcampcontent.com/University-of-Adelaide/UADEL-VIRT-DATA-PT-12-2023-U-LOLC/-/tree/main/21-Neural-Networks-Deep-Learning/2/Activities/05-Stu_TuneUp?ref_type=heads
