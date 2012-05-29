.onAttach <- function(lib, pkg){
  info <- packageDescription("statnet")
  packageStartupMessage(
  
    paste('statnet: Version ', info$Version, ', created on ', info$Date, '\n',
          'statnet is a suite of R packages for the statistical modeling of network data\n',
          'See http://statnet.org for statnet project information', sep="")

 )
}

