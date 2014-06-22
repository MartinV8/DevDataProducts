shinyUI(
      pageWithSidebar(
      headerPanel("Love Calculator"),
      
      sidebarPanel(
            h3('Names'),
            h4('Enter your name and the name of your crush to find out the strength of your connection.'),
            textInput('Name1', 'Your name'),
            textInput('Name2', 'Name of crush'),
            actionButton("goButton", 'Find out!')
            ),
      
      mainPanel(
            h3('Love index'),
            h4('Your names'),
            verbatimTextOutput("inputValue"),
            h4('The magical abilities of this algorithm arrived at the conclusion that you and your crush have a'),
            verbatimTextOutput("predict"),
            h4('chance to live happily ever after.'),
            h4('Call 555-<3 for more :-)')
            )
      ))