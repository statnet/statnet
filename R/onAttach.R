.onAttach <- function(lib, pkg){
  sm <- statnetStartupMessage("statnet", c(), TRUE)
  if(!is.null(sm)) packageStartupMessage(sm)
  check.updates()
}

