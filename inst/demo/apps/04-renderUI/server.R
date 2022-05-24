library(shiny)
library(shinyMCE)

function(input, output, session) { 
  x<-HTML("<div><h1> A TEST</h1> <p> a paragraph with <strong>strong</strong>text. </div>")
  output$editor1_ui       <- renderUI({tinyMCE('editor1', x )})
  output$editor1_content  <- renderPrint({input$editor1})
}