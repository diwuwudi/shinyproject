library(shiny)
shinyUI(fluidPage(
  titlePanel("Shiny Project"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("This tool is used to calculate and plot the correlation between two selected 
variables from RStudio's inbuilt mtcars dataset. Simply use the drop down box to select two 
               variables and the relevant results will be displayed"),
      h5("Available variables are listed below"),
      h5("mpg - Miles/(US) gallon"),
      h5("cyl - Number of cylinders"),
      h5("disp - Displacement (cu.in.)"),
      h5("hp - Gross horsepower"),
      h5("drat - Rear axle ratio"),
      h5("wt - Weight (100 lbs)"),
      h5("qsec - 1/4 mile time"),
      h5("vs - V/S"),
      h5("am - Transmission (0 = automatic, 1 = manual)"),
      h5("gear - Number of forward gears"),
      h5("carb - Number of carburetors"),
      
      selectInput("id1", 
                  label = "Choose the 1st variable",
                  choices = c("mpg", "cyl", "disp", "hp", "drat", "wt", "qsec", "vs", "am",
                              "gear", "carb"),
                  selected = "mpg"),
      selectInput("id2", 
                  label = "Choose the 2nd variable",
                  choices = c("mpg", "cyl", "disp", "hp", "drat", "wt", "qsec", "vs", "am",
                              "gear", "carb"),
                  selected = "mpg")
      ),
    mainPanel(
      h4("The correlation between the two selected variables is as follows"),
      verbatimTextOutput("prediction"),
      h4("The correlation between the two selected variables is plotted as follows"),
      plotOutput("plt")
      )
  )
))