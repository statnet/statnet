\name{update_statnet}
\alias{update_statnet}
\title{Update the Component Packages of the Statnet Suite}
\description{A wrapper around \code{\link{update.packages}} to update
  the component packages of Statnet Suite to their latest versions.
}
\usage{
update_statnet(\dots, ask = FALSE, checkBuilt = TRUE, addURLs = character())
}
\arguments{

  \item{ask, checkBuilt}{Arguments to \code{\link{update.packages}}
    documentation. The defaults are different from those of that
    function.}
    
    \item{addURLs}{Optional repository URLs in addition to CRAN, such as
      \url{http://statnet.csde.washington.edu/preview}. Defaults to
      none.}

  \item{\dots}{
    Additional arguments to be passed to \code{\link{update.packages}}.
  }
}
\details{
  
  Updates the list component packages of Statnet Suite, using \code{\link{setRepositories}} and \code{\link{update.packages}}.
  
  Since there are no good ways to update packages once they are loaded, this function should be called immediately after restarting R. 
  
}
\value{
  \code{update_statnet} returns NULL invisibly.  
}
\seealso{
  \code{\link{setRepositories}}, \code{\link{update.packages}}, \code{\link{install.packages}}
}
\examples{
\dontrun{
# Update from CRAN
statnet::update_statnet()

# Update from statnet.org's preview release, taking packages from CRAN
# as needed
statnet::update_statnet(addURLs="http://statnet.csde.washington.edu/preview")
}
}
\keyword{utilities}
