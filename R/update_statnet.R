#' Update the Component Packages of the Statnet Suite
#' 
#' A wrapper around \code{\link{update.packages}} to update the component
#' packages of Statnet Suite to their latest versions.
#' 
#' 
#' Updates the list component packages of Statnet Suite, using
#' \code{\link{setRepositories}} and \code{\link{update.packages}}.
#' 
#' Since there are no good ways to update packages once they are loaded, this
#' function should be called immediately after restarting R.
#' 
#' @param ask,checkBuilt Arguments to \code{\link{update.packages}}
#' documentation. The defaults are different from those of that function.
#' @param addURLs Optional repository URLs in addition to CRAN, such as
#' \url{http://statnet.csde.washington.edu/preview}. Defaults to none.
#' @param \dots Additional arguments to be passed to
#' \code{\link{update.packages}}.
#' @return \code{update_statnet} returns NULL invisibly.
#' @seealso \code{\link{setRepositories}}, \code{\link{update.packages}},
#' \code{\link{install.packages}}
#' @keywords utilities
#' @examples
#' 
#' \dontrun{
#' # Update from CRAN
#' statnet::update_statnet()
#' 
#' }
#'
#' @importFrom tools package_dependencies
#' @importFrom utils installed.packages old.packages setRepositories update.packages
#' @export
update_statnet <- function(..., ask = FALSE, checkBuilt=TRUE, addURLs = character()){
  if(length(addURLs)) setRepositories(addURLs = addURLs)
  update.packages(oldPkgs=c("statnet", "statnet.common", "network", "sna", "ergm", 
                            "networkDynamic", "tsna", "tergm", "ndtv", "relevent",
                            "ergm.ego", "ergm.count", "ergm.rank", "latentnet", "EpiModel",
                            "networksis", "degreenet"), ask = ask, checkBuilt = checkBuilt, ...)
  
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
