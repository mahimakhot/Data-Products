library(shiny)

shinyUI(
      pageWithSidebar(
            # Application title
            headerPanel("BMI Calculation"),
            sidebarPanel(
                  h3('Enter Values Here:'),           
                  numericInput('height', 'Height in cm', 170,                               
                               min = 20, max = 200, step = 1),
                  numericInput('weight', 'Weight in kg', 65,
                               min = 10, max = 150, step = 1),
                  submitButton('Submit')
            ),
            mainPanel(
                  h3('Metric BMI Value:'),
                  h4('You entered'),
                  h5('Height (in cm)'),
                  verbatimTextOutput("height"),
                  h5('Weight (in KG)'),
                  verbatimTextOutput("weight"),
                  h4('Which resulted in a BMI of '),
                  verbatimTextOutput("bmi"),
                  h4('BMI Categories:'),
                  h5('1. Underweight: Less than 18.5'),
                  h5('2. Normal weight: 18.5 to 24.9'),
                  h5('3. Overweight: 25 to 29.9'),
                  h5('4. Obese: greater than or equal to30')
            )
      )
)