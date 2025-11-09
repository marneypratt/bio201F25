#this code will use estimation statistics 
#to complete a 2 factor (or delta-delta) comparison
#the dabestr package must be loaded for this code to work

#set up the delta-delta test
paired_delta2  <- 
  load(my.df,
   x = ___,  #time factor column name
   y = ___,  #dependent variable column name
   experiment = ___,   #treatment factor column name
   delta2 = TRUE,
   experiment_label = c("___", "___"),  #treatment factor levels
   x1_level = c("___", "___"),  #time factor levels
   paired = "baseline", 
   id_col = ___)  |>    #subject column name
  mean_diff()

#prints the results of the inferential estimation statistics
print(paired_delta2)
print(paired_delta2$boot_result)

#plots the results
#for more plot options
#see https://acclab.github.io/dabestr/articles/plot_aesthetics.html 
#change marker and text sizes as needed
est.delta2.plot <- 
  dabest_plot(
    paired_delta2,
    swarm_label = "___",    #nice y-axis label, include units as needed
    raw_marker_size = 0.5, 
    swarm_x_text = 8,
    swarm_y_text = 12)
est.delta2.plot
