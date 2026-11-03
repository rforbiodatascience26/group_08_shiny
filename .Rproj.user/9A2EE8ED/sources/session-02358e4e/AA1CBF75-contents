# Define the Server (Backend)
server <- function(input, output) {
  output$dna <- renderText({
    gene_dna(length = input$n_bases, probs = c(input$probability_A, input$probability_T, input$probability_C, input$probability_G))
  })
}