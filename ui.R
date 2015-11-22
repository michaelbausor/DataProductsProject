library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Miles Per Gallon Prediction App"),
  sidebarPanel(
    numericInput("weight", "Weight of car (lb)", 3000, min=500, max=5000, step=100),
    radioButtons("transmission", "Transmission type:",
                 c("Automatic" = "auto",
                   "Manual" = "manual")),
    submitButton("Submit")
  ),
  mainPanel(
    h3("Predicted miles per gallon"),
    h4("This shiny app can be used to predict the miles per gallon of a car, given its weight in pounds (lbs). To use the app, enter the weight of your car in pounds in the box on the left, and press the submit button. Your predicted miles per gallon will be calculated and shown on the right of the page."),
    h3("Prediction"), 
    h4("For a car of weight (lbs)"),
    verbatimTextOutput("inputValue"),
    h4("Your predicted miles per gallon is"),
    verbatimTextOutput("prediction")
  )
))