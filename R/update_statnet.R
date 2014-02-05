update_statnet <- function(..., ask = FALSE, checkBuilt=TRUE, addURLs = character()){
  if(length(addURLs)) setRepositories(addURLs = addURLs)
  update.packages(oldPkgs=c("statnet", "statnet.common", "network", "ergm", "sna", "networkDynamic", "tergm", "ergm.count", "latentnet", "networksis", "degreenet", "relevent", "ndtv", "EpiModel"), ask = ask, checkBuilt = checkBuilt, ...)
}
