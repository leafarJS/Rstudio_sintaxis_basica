install.packages(c('rJava','xlsxjars','xlsx'))
library(rJava)
library(xlsxjars)
library(xlsx)

# Reading a text data

credit_data<-read.table("C:\\Users\\avijeet\\Desktop\\R tutorial demo files\\Data files\\credit.txt")
View(credit_data)

# Assigning proper names to the columns

credit_data1<-data.frame(ID=credit_data[,1],
                    Name=paste(credit_data[,2],credit_data[,3]),
                    Type=credit_data[,4],
                    Transaction=credit_data[,5])
credit_data1


# Reading a csv file

salary <- read.csv("C:\\Users\\avijeet\\Desktop\\R tutorial demo files\\Data files\\Salaries.csv")
head(salary)
View(salary)

# Check the structure of the csv dataset
str(salary)

# Check the column names
colnames(salary)

# Reading data from excel files
install.packages('readxl',repos="http://cran.rstudio.com/")
library('readxl')

# Display all the sheet names in an excel sheet
excel_sheets("C:\\Users\\avijeet\\Desktop\\R tutorial demo files\\Data files\\pokemon.xlsx")

# Read data from the sheets using read_excel
df <- read_excel("C:\\Users\\avijeet\\Desktop\\R tutorial demo files\\Data files\\pokemon.xlsx",sheet='Moves')
head(df)
View(df)

sum(df['Power'],na.rm = T)
str(df)
summary(df)


# If you had multiple sheets that you wanted to import into a list, you could do this with lapply()

entire_workbook <- lapply(excel_sheets("C:\\Users\\avijeet\\Desktop\\R tutorial demo files\\Data files\\pokemon.xlsx"), 
                          read_excel, 
                          path = "C:\\Users\\avijeet\\Desktop\\R tutorial demo files\\Data files\\pokemon.xlsx")
View(entire_workbook)

# Writing to excel files

df <- data.frame(matrix(1:50))
write.xlsx(df, "C:\\Users\\avijeet\\Desktop\\R tutorial demo files\\Data files\\output.xlsx")
read_excel("C:\\Users\\avijeet\\Desktop\\R tutorial demo files\\Data files\\output.xlsx")

# Reading a sas file
install.packages('sas7bdat')
library(sas7bdat)
movies<-read.sas7bdat("C:\\Users\\avijeet\\Desktop\\R tutorial demo files\\Data files\\movies.sas7bdat")
str(movies)
View(movies)  
