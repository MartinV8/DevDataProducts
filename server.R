library(shiny)

shinyServer(
      function(input, output) {
         output$inputValue <- renderPrint({paste(input$Name1, 'and', input$Name2)})  
         output$predict <- renderPrint({
               x <- 0
               x1 <- grep("[Ll]", input$Name1); y1 <- grep("[Ll]", input$Name2)
               x2 <- grep("[Oo]", input$Name1); y2 <- grep("[Oo]", input$Name2)
               x3 <- grep("[Vv]", input$Name1); y3 <- grep("[Vv]", input$Name2)
               x4 <- grep("[Ee]", input$Name1); y4 <- grep("[Ee]", input$Name2)
               y <- sum(x1,x2,x3,x4,y1,y2,y3,y4)
               if (input$goButton == 0)
               {print("0")}
               else
               {x <- paste(round(100*ppois(y, 2.5),1),'%')
               print(x)}
         })
      }
      )