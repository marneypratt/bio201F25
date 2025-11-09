#this code will use estimation statistics 
#to compare values between groups
#the dabestr package must be loaded for this code to work

#set up the comparison
compare_unpaired <- load(
  my.df.before,
  x = ___,   #factor column name
  y = ___,  #dependent variable column name
  idx = c("___", "___") #factor levels
) |> 
  mean_diff()

#plots the results
#for more plot options
#see https://acclab.github.io/dabestr/articles/plot_aesthetics.html 
#put the nice label (with units as needed) in the blank
est.plot <- 
  dabest_plot(compare_unpaired,
              swarm_label = "____")
est.plot