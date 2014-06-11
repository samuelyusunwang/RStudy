readNMRData <-
function (f) {
  x <- read.csv(f, sep=";", header=FALSE, comment.char="\\")
  x <- x[, - 5]
  names(x) <- c("RFID", "date", "time", "gate")
  x$datetime  <- paste(x$date, x$time)
  x$time <- as.POSIXct(x$datetime, format="%m/%d/%Y %H:%M:%S")
}
