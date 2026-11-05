# Define the Server (Backend)
server <- function(input, output) {
  
# Generate the DNA sequence once per input change
random_dna <- reactive({
  gene_dna(length = input$n_bases, 
           probs = c(input$probability_A, input$probability_T, 
                     input$probability_C, input$probability_G))
})

current_dna <- reactive({
  if (is.null(input$DNA_seq) || nzchar(trimws(input$DNA_seq)) == 0) {
    random_dna()
  } else {
    input$DNA_seq
  }
})


# Render the DNA text
output$dna <- renderText({
  current_dna()
})

# Render the base frequencies table
output$base_counts_table <- renderTable({
  base_freqs(dna = current_dna())
})

random_rna <- reactive({
  transcribe_dna(dna = current_dna())
})

current_rna <- reactive({
  if (is.null(input$RNA_seq) || nzchar(trimws(input$RNA_seq)) == 0) {
    random_rna()
  } else {
    input$DNA_seq
  }
})

output$RNA <- renderText({
  current_rna()
})

output$peptide <- reactive({
  translate_rna(rna = current_rna())
})
}