library(shiny)

mpgpred <- function(weight, transmission) {
  if (transmission == "auto") {
    val <- weight*-5.34/1000 + 37.29
  }
  else {
    val <- weight*-9.08/1000 + 46.3
  }
  val
}

shinyServer(
  function(input, output) {
    output$inputValue <- renderText({input$weight})
    output$inputTransmission <- renderText({input$transmission})
    output$prediction <- renderText({mpgpred(input$weight, input$transmission)})
  }
)