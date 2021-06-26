#' Update the Core Component Packages of the \pkg{statnet} Suite
#' 
#' A wrapper around \code{\link{update.packages}} to update the core component
#' packages of the \pkg{statnet} Suite to their latest versions.
#' 
#' 
#' Updates the core component packages of Statnet Suite, using
#' \code{\link[utils]{setRepositories}} and \code{\link[utils]{update.packages}}.  For
#' the list of packages automatically updated, see \code{\link[statnet]{statnet}}.
#' 
#' This function should be called immediately after restarting R, 
#' since there are no good ways to update packages once they are loaded.
#' 
#' With no additional arguments specified, the function will update the
#' packages from CRAN.
#' 
#' You can also obtain the latest build for the suite of packages
#' from the master branches of the \code{statnet}
#' public GitHub repositories with the \code{betas} argument.  This will
#' install from the binaries hosted at \url{https://statnet.r-universe.dev}.  Note
#' that while these nightly builds have passed continuous integration tests, 
#' they may have other bugs and incompatibilities.  
#' Please report any bugs on the GitHub package repository.
#' 
#' @param ask,checkBuilt Arguments to \code{\link{update.packages}}
#' documentation. The defaults are different from those of that function.
#' @param betas Optional repository specification 
#' \url{https://statnet.r-universe.dev} to install the latest public
#' development versions of the packages. Defaults to FALSE.
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
#' # Update using latest build of GitHub public master branch on r-universe
#' statnet::update_statnet(betas = TRUE)
#' }
#'
#' @importFrom tools package_dependencies
#' @importFrom utils installed.packages old.packages setRepositories update.packages
#' @export
update_statnet <- function(..., ask = FALSE, checkBuilt=TRUE, betas = FALSE){
  if(betas) {
    repos = "https://statnet.r-universe.dev" 
  } else {
    repos = getOption("repos")}
  update.packages(oldPkgs=c("statnet", "rle", "statnet.common", 
                            "network", "ergm", 
                            "networkDynamic", "tsna", "tergm", "ndtv",
                            "ergm.ego", "ergm.count", "ergm.rank", "latentnet"), 
                  repos = repos,
                  ask = ask, checkBuilt = checkBuilt, ...)
  
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
