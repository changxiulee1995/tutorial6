library(shiny)

ui = fluidPage(
  sliderInput(inputId = "slope", label = "Slope", value = 1, min = 0, max = 100),
  sliderInput(inputId = "intercept", label = "Intercept", value = 0, min = 0, max = 100),
  plotOutput("line"),
)

server = function(input, output){
  output$line = renderPlot({
    plot(1, type = "n", xlab = "", ylab = "", xlim = c(-10,10), ylim =c(-10,10))
    abline(a = input$intercept, b = input$slope);
    })
}

shinyApp(ui = ui, server = server)

