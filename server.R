library(shiny)

#BMI_val <- weight*100*100/(height*height)
BMI_val <- function(weight, height) weight*100*100/height/height
shinyServer(
      function(input, output) {
            output$height <- renderPrint({input$height})
            output$weight <- renderPrint({input$weight})
            output$bmi    <- renderPrint({BMI_val(input$weight, input$height)})
      }
)

#> library(shinyapps)
#> shinyapps::deployApp('C:/Users/Mahima/Documents/GitHub/Data-Products')
