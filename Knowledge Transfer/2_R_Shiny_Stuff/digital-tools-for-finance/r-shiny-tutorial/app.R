library(shiny)
library(plotly)
source("datafeed.R")
source("helpers.R")

z <- c("AAPL", "CVX", "DAL", "GM", "GS", 
       "JPM", "LUV", "MSFT", "SPY", "TSLA", 
       "XOM") 
names(z) <- z
x <- lapply(split(z, names(z)), unname)

# user interface is defined here
ui <- fluidPage(
  titlePanel(h1("market betas vs. average returns")),
  
  sidebarLayout(
    sidebarPanel(
      h2("controls"),
      br(),
      selectInput("frequency",
                  label = "select frequency",
                  choices = list("daily" = "daily", 
                                 "monthly" = "monthly",
                                 "yearly" = "yearly"), selected = "daily"),
      selectInput("test",
                  label = "I don't know what I am doing",
                  choices = list('x' = 'x',
                                 'y' = 'y'), selected = 'y'),
      selectInput('Hey! This works',
                  label = 'Hey! This works',
                  choices = list("this" = "this",
                                 "works" = "works"), selected = "this"),
      checkboxGroupInput('stock',
                          label = 'Choose one stock to delete',
                          choices = x)
      
    ),
    
    mainPanel(
      h2("results"), 
      plotlyOutput("plot")
    )
  )
)

# what your computer/server does is defined here
server <- function(input, output) {
  # # get data
  # r <- get_stock_data(input$stock)
  
  # calculate betas based on data frequency
  inputB = reactive({
    mega_function(freq = input$frequency, mkt_col = "SPY", nope = input$stock)
  })
  
  output$plot <- renderPlotly({
    # means
    mu = colMeans(inputB()[[1]]) * 252 * 100
    # betas
    b = inputB()[[2]]
    # both to data.frame
    df = data.frame(b, mu = mu)
    # ols fit
    fit <- lm(mu ~ b, data = df)
    
    # plot
    fig <- plot_ly(
      type = "scatter",
      x = b, y = mu,
      data = df, 
      mode = "markers",
      text = rownames(df),
      showlegend = FALSE,
      name = "stock")
    
    fig <- fig %>%
      add_lines(x = df$b, y = fitted(fit), name = "ols fit")
    
    fig
    
  })
}

# run the app
shinyApp(ui = ui, server = server)