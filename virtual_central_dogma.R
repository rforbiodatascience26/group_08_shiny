# Load needed libraries
library("shiny")

# Load needed functions
source(file = "03_app_functions.R")

# Run the frontend user interface ui.R
source(file = "03_app_ui.R")

# Run the backend server server.R
source(file = "03_app_server.R")

# Run the Shiny app
shinyApp(ui = ui, server = server)