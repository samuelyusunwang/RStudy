require(manipulate)
dens <- list("Normal"=rnorm, "Exponential"=rexp)

manipulate(## The plot expression
          {
            y <- dens[[distribution]](n)
            plot(density(y, bw=bw, kernel=kernel))
            if(addPoints)
              points(y,rep(0,length(y)))
          },
          ## define controls
          n = slider(5, 100, initial=10),
          distribution=picker("Normal","Exponential"),
          kernel = picker("gaussian", "epanechikov", "rectangular",
                          "triangular", "cosine"),
          bw = slider(.05,2, initial=1),
          addPoints = checkbox(TRUE, "Add points")
          
          )
