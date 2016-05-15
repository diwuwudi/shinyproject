library(shiny)
data(mtcars)
correalation <- function(x,y) {
  cor(x,y)
}

shinyServer(
  function(input, output) {
    output$prediction <- renderPrint({correalation(mtcars[input$id1], mtcars[input$id2])})
    output$plt <- renderPlot({plot(unlist(c(mtcars[input$id1])), unlist(c(mtcars[input$id2])),
                                   xlab = input$id1, ylab = input$id2)})

  }
)