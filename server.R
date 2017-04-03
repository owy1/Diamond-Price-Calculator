library(shiny)
library(ggplot2)

myvars = c("carat","cut","color","clarity","price")
newdata=diamonds[myvars]
newdata$carat <- as.factor(newdata$carat)

# Define server logic required to illustrate interactive graphics in R (week4)
shinyServer(function(input, output) {
        result = lm(price ~ ., data=newdata)
        model <- reactive({
               
                predict(result, data.frame(carat=input$select1, cut=input$select2,
                        color=input$select3, clarity=input$select4),interval="confidence")
   })
  
   output$out1 <- renderText({
           sprintf('between %s and %s',round(model()[2],2),round(model()[3],2))
           })
   
})
