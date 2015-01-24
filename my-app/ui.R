# ui.R

library(shiny)

shinyUI(
        pageWithSidebar(
                # Application title
                headerPanel(h2("Understanding Your Health Risk Via Body Mass 
                               Index (BMI)", style = "color:orange")),
                
                sidebarPanel(
                        h4(strong("Instructions:")),
                        p("The application helps you understand your health 
                          risk as indicated by your Body Mass Index (BMI) 
                          which can be calculated from your weight and height."),
                        br(),
                        p("To begin, please enter your weight (in kg) and your 
                          height (in m) under the respective boxes below. Then, 
                          click on the 'Submit' button. Your BMI will be 
                          displayed on the right panel."),
                        br(),
                        p("With your BMI, you can get an indication of your 
                          health risk through referencing the chart found at the   
                          bottom of the right panel."),
                        numericInput("weight", label = h4("Your Weight in kg"), 
                                     value = 75),
                        numericInput("height", label = h4("Your Height in m"), 
                                     value = 1.8),
                        submitButton("Submit")
                ),
                mainPanel(
                        h3("Results of BMI Calculation", style = "color:green"),
                        br(),
                        h4("You have entered"),
                        verbatimTextOutput("inputValue1"), h4("for weight in kg"),
                        br(),
                        verbatimTextOutput("inputValue2"), h4("for height in m"),
                        br(),
                        h4("which resulted in ", strong("Body Mass Index"), "of "),
                        verbatimTextOutput("calculate"),
                        br(),
                        h3("Refer to the chart below for your ", 
                           strong("health risk"),
                           style = "color:green"),
                        br(),
                        img(src="risk.png", height = 200, width = 600)
                )
        )
)