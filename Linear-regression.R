#Linear Regression is widely used in statistical analysis between two variable. It is used to establish the relationship between 2 variable. 
# One variable is called predictor variable, which is generated from experimentation whereas other variable called responsive variable which is dependent on predictor variable.
#Simple equation for Linear regression is:
#                y = ax+b
#           Where,
#                  y is the responsive variable
#                  x is the predictor
#                  a and b is the coefficient
     
#In order to create a simple linear regression model#
#  1. Input dataset (two variable)
#  2. Create a relationship between the 2 variable using lm() function, it is inbuilt R function.
#  3. Find the coefficient of the model and generate a mathematical equations from these coefficient 
#  4. Get the summary of the model by predicting the average error.
#  5. Go with the prediction of the new data by using predict() function in R.
#  6. Go for the visualization

#Input variables#
  x <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131)
  y <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48)

#Apply the lm() function#
  relation <- lm(y~x)
  print(relation)

#Summary of the relationship#
  print(summary(relation))
 
#Prediction of the new data using predict () function with new data (x=170)#
  a <- data.frame(x=170)
  result <-predict(relation,a)
  print(result)
  
#Visualization of the predicted value graphically#
  x <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131)
  y <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48)
  relation <- lm(y~x)
  
# Give the chart file a name.
  png(file = "linearregression.png")
  
# Plot the chart.
  plot(y,x,col="blue",main="Height & Weight Regression", abline(lm(x~y)),cex = 1.3,pch=16,xlab="Weight in Kg",ylab="Height in cm")
  
# Save the file.
  dev.off()
  

