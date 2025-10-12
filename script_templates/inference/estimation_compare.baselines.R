#this code will use estimation statistics 
#to compare the baseline values between groups
#the dabestr package must be loaded for this code to work


#filter to keep just the baseline values
#put the column name for the factor that 
#has when values were measured in the first blank
#put the level name of your baseline in the 
#second blank in quotes
#from my example it was filter(time.measured == "Before")
my.df.before <- my.df |> 
  filter(___ == "___")

#set up the comparison
compare_baselines <- load(
  my.df.before,
  x = ___,   #treatment factor column name
  y = ___,  #dependent variable column name
  idx = c("___", "___") #treatment levels
) |> 
  mean_diff()

#print the results
print(compare_baselines)

#plots the results
#for more plot options
#see https://acclab.github.io/dabestr/articles/plot_aesthetics.html 
#put the nice label (with units as needed) in the blank
est.baseline.plot <- 
  dabest_plot(compare_baselines,
              swarm_label = "____")
est.baseline.plot