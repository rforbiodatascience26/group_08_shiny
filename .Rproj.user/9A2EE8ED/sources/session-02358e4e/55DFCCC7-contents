library("shiny")

# Define the "Virtual Gene"-function (See code for functions above)
gene_dna <- function(length, probs){
    if( length %% 3 != 0 ){
      stop("The argument to the parameter 'l' has to be divisible by 3")
    }
    if( sum(probs) != 1){
      stop("The sum of probabilities must be 1")
      
    }
    dna_vector <- sample(
      x = c("A", "T", "C", "G"),
      size = length,
      replace = TRUE,
      prob = probs)
    dna_string <- paste0(
      x = dna_vector,
      collapse = "")
    return(dna_string)
  }

# Define the User Interface (Frontend)
ui <- fluidPage(
  layout_columns(
    col_widths = 12,
    card(
      titlePanel("R for Bio Data Science"),
      style = "background-color: #f0f0f0; padding: 15px;"
    )),
  layout_columns(
    col_widths = 12,
    card(
      titlePanel("About"),
      helpText("This Posit app lets you generate DNA sequences of the length of your choice with probabilities for each base")
    )),
  layout_columns(
    col_widths = 12,
    card(
      card_header("Virtual Gene Generator"),
      sliderInput(inputId = "n_bases",
                  label = "Number of bases:",
                  min = 1,
                  max = 60,
                  value = 30,
                  width = "100%"),
    )
    
  ),
  sidebarLayout(
    sidebarPanel(
      numericInput(inputId = "probability_A",
                   label = "P(A)",
                   min = 0,
                   max = 1,
                   value = 0.25)
    ),
    mainPanel(
      textOutput(outputId = "P(A)")
    )),
    
    sidebarLayout(
      sidebarPanel(
        numericInput(inputId = "probability_T",
                     label = "P(T)",
                     min = 0,
                     max = 1,
                     value = 0.25)
      ),
      mainPanel(
        textOutput(outputId = "P(T)")
    
  )),
  sidebarLayout(
    sidebarPanel(
      numericInput(inputId = "probability_C",
                   label = "P(C)",
                   min = 0,
                   max = 1,
                   value = 0.25)
    ),
    mainPanel(
      textOutput(outputId = "P(C)"))),
  sidebarLayout(
    sidebarPanel(
      numericInput(inputId = "probability_G",
                   label = "P(G)",
                   min = 0,
                   max = 1,
                   value = 0.25)
    ),
    mainPanel(
      textOutput(outputId = "P(G)")
    )
  ),
layout_columns(
  col_widths = 12,
  card(
    card_header("Virtual Gene output"),
    mainPanel(
      verbatimTextOutput(outputId = "dna")
    ))))


# Define the Server (Backend)
server <- function(input, output) {
  output$dna <- renderText({
    gene_dna(length = input$n_bases, probs = c(input$probability_A, input$probability_T, input$probability_C, input$probability_G))
  })
}

# Launch the shiny app
shinyApp(ui = ui, server = server)