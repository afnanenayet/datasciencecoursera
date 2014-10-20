pollutantmean <- function(directory, pollutant, id = 1:332) {
  setwd(directory)
  ##wcolumn <- [,pollutant]
  files <- dir()
  data <- numeric()
  data<-data.frame()
  
  for(i in id) {
    data<-rbind(data,read.csv(files[i]))
  }
  
  return(mean(data, na.rm = TRUE))
}
