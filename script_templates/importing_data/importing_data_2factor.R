#make sure the readr and labelled packages are loaded before using this code template

#Import data file 
#replace the blank below with the name of your data
#make sure that you put the .csv file into data folder
my.df <- read_csv("data/___.csv",
                  show_col_types = FALSE)

#Change independent categorical variables to factors
#replace the blanks after my.df$ with the column name of the 
#independent categorical variable 
#(make sure to use the same column name on the same line)
#replace the blanks in quotes with the levels within each column
#make sure you put the levels in the right order 
#for example 
#my.df$time.measured <- factor(my.df$time.measured, levels = c("Before", "After"))
my.df$___ <- factor(my.df$___, 
                              levels = c("___", "___"))
my.df$___ <- factor(my.df$___, 
                           levels = c("___", "___"))

#add more useful labels for the columns
#put the column name in the first blank on each line
#put the more descriptive label (with units) in the blank in quotes
#add or remove lines as needed depending on the number of columns you have
#this example has space for 4 columns, but you can change it as needed
my.df <- my.df |> 
  labelled::set_variable_labels(
    ___           = "___",
    ___           = "___",
    ___           = "___",
    ___           = "___",
  )

#see https://www.pipinghotdata.com/posts/2022-09-13-the-case-for-variable-labels-in-r/ for more help with labeling data