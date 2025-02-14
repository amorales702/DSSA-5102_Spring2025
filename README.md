# Data Gathering & Warehousing 
## DSSA-5102 - Spring 2025
_Data Science and Strategic Analytics Graduate Program_ - [Stockton University](https://www.stockton.edu/)

### Languages & Environment:
- Python, SQL, Anaconda Navigator, Jupyter Notebook, Github, Spyder

### Assignments:
- Assignment #1 - Locating a Dataset
    - Importing data and initial dataset exploration (Master dataset not available on repository). 
- Assignment #2 - Cleaning our Dataset
    - Preparing our dataset for our future class database (Master dataset not available on repository).
- Assignment #3 - Metadata
    - Creating a metadata file with all necessary components

### Student Repositories:

#### Assigment #3
- Where is the data from?
  
  - The data set is title "Nutrition, Physical Activity, and Obesity - Policy and Environmental Data" and is from the CDC website.

  - https://data.cdc.gov/Nutrition-Physical-Activity-and-Obesity/Nutrition-Physical-Activity-and-Obesity-Policy-and/k8w5-7ju6/about_data

- How was it collected?​

  - Data is collected from multiple sources and can be founf in the dataset in the "datasource" column. Sources listed: 
    
     'SHP', 'Breastfeeding Surveillance Sources', 'School Health Profiles (Profiles)', 'ECE Surveillance Sources', 'Fruits and Vegetables Surveillance Sources', 'National Complete Streets Coalition',
     'National Environmental Public Health Tracking Network','CDC Maternity Practices in Infant Nutrition and Care Survey', "National Survey of Children's Health".


- How was it extracted?​

    - downloaded as a csv file from the CDC website on 02/08/2025.
    
- What program was used to clean the data?​
  
    - Jupyter Notebooks using Pandas, Numpy, and Matplotlib packages.
      
- How was the data cleaned or transformed? Be specific.​

    - Columns where changed to lower case
      
                  df.columns = [col.lower() for col in df.columns]

 
    - Data may need more cleaning depending on what it is used for in the future. IE. filtering down to certian questions or states may require another look at the data values to ensure there are no outliers within the subset. 
    


        
- What are the units of the numeric data?​

    - The columns 'data_value', 'data_value_alt', and 'locationid' are the only columns with numerical data.
    - For 'data_value' and 'data_value_alt' the unit is dependant on the 'question' column. Whether the unit is a count, percent, score or average is indicated in the question
    - 'data_value_alt' indicated 10001 for yes in 'data_value' and 10002 for no in 'data_value'
    - 'locationId' is just a key for the location  
      
- What were the formulas used in column creation?​

    - None
      

- What are the definitions for the column names? Include all columns in your dataset.​

     - From CDC website:

                                                                            
                                                   		
                            YearStart =	Year Start  
                            
                            YearEnd	= Year End (for single-year indicator, year end=year start)
                            
                            LocationAbbr = Location Abbreviation	
                            
                            LocationDesc = 	Location Description	
                            
                            Datasource =	Abbreviation of Data Source	
                            
                            Class  =  	Class Description	
                            
                            Topic =	Topic Description	
                            
                            Question = Question Description	
                            
                            Data_Value_Unit =	Description of unit e.g. %, etc	
                            
                            Data_Value_Type =	Description of type of data e.g. Percentage, Number	
                            
                            Data_Value =	Data value (percentage, text)	
                            
                            Data_Value_Alt =	Numeric representation of data value	
                            
                            Data_Value_Footnote_Symbol =	Symbol that would be used to flag footnotes	
                            
                            Data_Value_Footnote =	Footnote text	
                            
                            Total =	Total/Overall breakout category	
                            
                            ClassID =	Lookup identifier value for class	
                            
                            TopicID =	Lookup identifier value for topic	
                            
                            QuestionID =	Lookup identifier value for indicator	
                            
                            DataValueTypeID =	Lookup identification value for Data_Value_type	
                            
                            LocationID =	Lookup identifier value for location	
                            
                            StratificationCategory1 =	Lookup Identification value, such as Age Group, Sex	
                            
                            Stratification1  =	Data stratified by this value, such as Male, Female, Total	
                            
                            StratificationCategoryId1 =	Lookup identifier value for Stratification1	                    
                                
                                
					
				
          

- If there are set variable options in your dataset, what are thier definitions? ​

   - The only columns with variables that are not further described in the dataset are the Stratification catergory1 and Stratification1 which only have one value each "Total" 
          
- What are the regulations to using the data?

  - This data set is publically available on the cdc website and is free fro public use. 
