library(shiny)
library(leaflet)

shinyServer(function(input, output) {
  output$plot1 <- renderLeaflet({
    map1<-leaflet() %>% addTiles()
    ifelse(input$big,
           map1<-map1 %>% addMarkers(lat=31.103196, lng=121.449600, popup = "Shanghai <br> population: 24.15m"), map1<-map1)
    ifelse(input$exp,
           map1<-map1 %>% addMarkers(lat=1.346946, lng=103.838056, popup = "Singapore"), map1<-map1)
    ifelse(input$nice,
           map1<-map1 %>% addMarkers(lat=48.200924, lng=16.361511, popup="Vienna"), map1<-map1)
    map1
    })
  
})
