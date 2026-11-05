# Define the Server (Backend)
server <- function(input, output) {
  
# Generate the DNA sequence once per input change
current_dna <- reactive({
  gene_dna(length = input$n_bases, 
           probs = c(input$probability_A, input$probability_T, 
                     input$probability_C, input$probability_G))
})

# Render the DNA text
output$dna <- renderText({
  current_dna()
})

# Render the base frequencies table
output$base_counts_table <- renderTable({
  base_freqs(dna = current_dna())
})

output$RNA <- reactive({
  transcribe_dna(dna = input$DNA_seq)
})
}