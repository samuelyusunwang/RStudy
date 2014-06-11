l2 <- sapply(l1, function(x) {
    nr <- nrow(x)
    x$bubble <- numeric(nr)
    x$bubble[1] <- x$gate[1] ## start somewhere
    for(i in 2:nr) {
      x$bubble[i] <- x$gate[i] +
        as.numeric(x$gate[i] >= x$bubble[i-1])
    }
    x
}, simplify=FALSE)
