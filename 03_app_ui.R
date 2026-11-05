ui <- fluidPage(
  layout_columns(
    col_widths = 12,
    card(
      titlePanel("R for Bio Data Science"),
      style = "background-color: #f0f0f0; padding: 15px;"
    )
  ),
  
  layout_columns(
    col_widths = 12,
    card(
      titlePanel("About"),
      helpText("This Posit app lets you generate DNA sequences of the length of your choice with probabilities for each base")
    )
  ),
  
  layout_columns(
    col_widths = 12,
    card(
      card_header("Virtual Gene Generator"),
      sliderInput(inputId = "n_bases",
                  label = "Number of bases:",
                  min = 1,
                  max = 60,
                  value = 30,
                  width = "100%")
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
    )
  ),
  
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
    )
  ),
  
  sidebarLayout(
    sidebarPanel(
      numericInput(inputId = "probability_C",
                   label = "P(C)",
                   min = 0,
                   max = 1,
                   value = 0.25)
    ),
    mainPanel(
      textOutput(outputId = "P(C)")
    )
  ),
  
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
      )
    )
  ),
  
  layout_columns(
    col_widths = 12,
    card(
      card_header("Base Counts"),
      mainPanel(
        tableOutput(outputId = "base_counts_table")
      )
    )
  ),
  layout_columns(
    col_widths = 12,
    card(
      card_header("virtual_rna_pol"),
      textAreaInput(inputId = "DNA_seq",
                    label = "virtual_arn_pol",
                    value = "",
                    rows = 4)),
      mainPanel(
        textOutput(outputId = "RNA")
      
      ))
  )
  