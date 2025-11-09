#this code will use estimation statistics 
#to compare the manually calculated change values between groups
#the dabestr package must be loaded for this code to work

#first we need to rearrange the format of the data from long to wide
#this way, we will have one row for each subject 
#and can then calculate a difference (or change)
#between the second and first values
# my.df.wide  <- my.df |> 
#   pivot_wider(
#     names_from = time.measured,
#     names_glue = "{time.measured}.{.value}",
#     values_from = maxGrip)
my.df.wide  <- my.df |>
  pivot_wider(
    names_from = ___,    #column name for time factor
    names_glue = "{___}.{.value}",  #column name for time factor
    values_from = ___)              #dependent variable name


#next, take the difference between the values for each subject
# example: mutate(change.maxGrip = After.maxGrip - Before.maxGrip)
my.df.diff <- my.df.wide |> 
  select(___,  #between subjects factor column name
         ___,  #within subjects factor column name
         ___,  #subjects column name
         ___,) |>  #dependent variable column name
  mutate(change.___ =  #dependent variable name
           ___.___ - ___.___) #new column names to calculate change

#set up the comparison
compare_change <- load(
  my.df.diff,
  x = ___,      #treatment factor column name
  y = change.___,    #dependent variable name
  idx = c("___", "___")   #treatment levels
) |> 
  mean_diff()

#print the results
print(compare_change)

#plots the results
#for more plot options
#see https://acclab.github.io/dabestr/articles/plot_aesthetics.html 
#replace the blank with the label for the y-axis
#example: "Change in Max Grip Force (N)\n(After - Before)"
est.change.plot <- 
  dabest_plot(compare_change,
              swarm_label = 
                "____")
est.change.plot
