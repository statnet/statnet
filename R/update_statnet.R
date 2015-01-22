update_statnet <- function(..., ask = FALSE, checkBuilt=TRUE, addURLs = character()){
  if(length(addURLs)) setRepositories(addURLs = addURLs)
  update.packages(oldPkgs=c("statnet", "statnet.common", "network", "ergm", "sna", "networkDynamic", "tergm", "ergm.count", "latentnet", "networksis", "degreenet", "relevent"), ask = ask, checkBuilt = checkBuilt, ...)
  
}


check.updates <- function(show=TRUE) {
  
  ap <- installed.packages() 
  deps <- package_dependencies('statnet', which=c('Depends','Imports','Suggests'), db = ap, recursive = F)[[1]]
  deps <- c('statnet', deps)
  
  olds <- tryCatch({old.packages()},
                   error = function(e) {
                     message('unable to reach CRAN')
                     NULL
                   })
  if (is.null(olds)) return(NULL)
  
  olds.statnet <- olds[rownames(olds) %in% deps, c(3,5,4), drop=FALSE]
  if (show) {
    if (nrow(olds.statnet) > 0) {
      message("\nThere are updates for the following statnet packages on CRAN:")
      print(olds.statnet)
      message("Restart R and use \"statnet::update_statnet()\" to get the updates.")
    }
  } else {
    return(olds.statnet)
  }
}
