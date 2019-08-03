library(shiny)
library(emojify)

ui <- fluidPage(
  titlePanel("reactR HTMLWidget Example"),
  emojifyOutput('widgetOutput')
)

server <- function(input, output, session) {
  output$widgetOutput <- renderEmojify(
    emojify(set='emojione')
  )
}

shinyApp(ui, server)
