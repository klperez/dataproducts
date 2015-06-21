library(ggplot2)

shinyUI(pageWithSidebar(
        headerPanel('mtcars k-means clustering'),
        sidebarPanel(
                selectInput('xcol', 'X Variable', names(mtcars)),
                selectInput('ycol', 'Y Variable', names(mtcars),
                            selected=names(mtcars)[[2]]),
                numericInput('clusters', 'Cluster count', 3,
                             min = 1, max = 9)
        ),
        mainPanel(
                plotOutput('plot1')
        )
))