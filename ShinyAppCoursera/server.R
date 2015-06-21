library(ggplot2)

palette(c("#E41A3C", "#374EB8", "#4DAF4A", "#984EA3",
          "#FF7F00", "#FFFF23", "#A65628", "#F781BF", "#999999"))

shinyServer(function(input, output, session) {
        
        # Combine the selected variables into a new data frame
        selectedData <- reactive({
                mtcars[, c(input$xcol, input$ycol)]
        })
        
        clusters <- reactive({
                kmeans(selectedData(), input$clusters)
        })
        
        output$plot1 <- renderPlot({
                par(mar = c(5.1, 4.1, 0, 1), bg="gray99")
                plot(selectedData(),
                     col = clusters()$cluster,
                     pch = 20, cex = 2,frame = FALSE)
                grid(4, 4, lwd = 1)
                points(clusters()$centers, pch = 13, cex = 2, lwd = 2)
        })
        
})