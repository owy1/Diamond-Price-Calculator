library(shiny)

# Define UI for application that illustrate interactive graphics in R
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Diamond 4 C's"),
  
  sidebarLayout(
         
    sidebarPanel(
            h3("input desired diamomod's characteristics: carat, cut, color and clarity for output approximate price"),
            selectInput("select1", label = h3("Carat"), 
                        choices = list("1" = 1, "2" = 2, "3" = 3, "4" = 4, "5" = 5), 
                        selected = 1),
            
            hr(),
            hr(),
            fluidRow(column(4, verbatimTextOutput("value1"))),
            
            selectInput("select2", label = h3("Cut"), 
                        choices = list("Ideal" = "Ideal", "Premium" = "Premium", "Very Good" = "Very Good", "Good" = "Good", "Fair" = "Fair"), 
                        selected = "Good"),
            
            hr(),
            hr(),
            fluidRow(column(4, verbatimTextOutput("value2"))),
            selectInput("select3", label = h3("Color"), 
                        choices = list("D" = "D", "E" = "E", "F" = "F", "G" = "G", "H" = "H", "I" = "I", "J" = "J"), 
                        selected = "I"),
            
            hr(),
            hr(),
            fluidRow(column(4, verbatimTextOutput("value3"))),
            selectInput("select4", label = h3("Clarity"), 
                        choices = list("I1" = "I1", "SI2" = "SI2", "SI1" = "SI1", "VS2" = "VS2", 
                                       "VS1" = "VS1","VVS2" = "VVS2", "VVS1" = "VVS1","IF" = "IF"),
                        selected = "VS1"),
            
            hr(),
            hr(),
            fluidRow(column(4, verbatimTextOutput("value4")))
         
    ),
    
    mainPanel(
       img(src="diamond_clarity.png", height=200, width=300),
       img(src="diamond_color.png", height=200, width=300),
       img(src="diamond_cut.png", height=350, width=600),
       #HTML('<center><img src="diamond_cut.png", height=300, width=600></center>'),
       
       h3("Estimated Price for Chosen Diamond"),
       h6("estimated from 2014 US dollars"),
       h3(textOutput("out1"))
    )
  )
  
))
