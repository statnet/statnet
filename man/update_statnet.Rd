% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/update_statnet.R
\name{update_statnet}
\alias{update_statnet}
\title{Update the Core Component Packages of the \pkg{statnet} Suite}
\usage{
update_statnet(..., ask = FALSE, checkBuilt = TRUE, betas = FALSE)
}
\arguments{
\item{\dots}{Additional arguments to be passed to
\code{\link{update.packages}}.}

\item{ask, checkBuilt}{Arguments to \code{\link{update.packages}}
documentation. The defaults are different from those of that function.}

\item{betas}{Optional repository specification 
\url{https://statnet.r-universe.dev} to install the latest public
development versions of the packages. Defaults to FALSE.}
}
\value{
\code{update_statnet} returns NULL invisibly.
}
\description{
A wrapper around \code{\link{update.packages}} to update the core component
packages of the \pkg{statnet} Suite to their latest versions.
}
\details{
Updates the core component packages of Statnet Suite, using
\code{\link[utils]{setRepositories}} and \code{\link[utils]{update.packages}}.  For
the list of packages automatically updated, see \code{\link[statnet]{statnet}}.

This function should be called immediately after restarting R, 
since there are no good ways to update packages once they are loaded.

With no additional arguments specified, the function will update the
packages from CRAN.

You can also obtain the latest build for the suite of packages
from the master branches of the \code{statnet}
public GitHub repositories with the \code{betas} argument.  This will
install from the binaries hosted at \url{https://statnet.r-universe.dev}.  Note
that while these nightly builds have passed continuous integration tests, 
they may have other bugs and incompatibilities.  
Please report any bugs on the GitHub package repository.
}
\examples{

\dontrun{
# Update from CRAN
statnet::update_statnet()

# Update using latest build of GitHub public master branch on r-universe
statnet::update_statnet(betas = TRUE)
}

}
\seealso{
\code{\link{setRepositories}}, \code{\link{update.packages}},
\code{\link{install.packages}}
}
\keyword{utilities}
