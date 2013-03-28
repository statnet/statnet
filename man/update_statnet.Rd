\name{update_statnet}
\alias{update_statnet}
\title{Updates the Component Packages of statnet}
\usage{
update_statnet(\dots)
}
\arguments{
  \item{\dots}{
    Arguments passed to \code{\link{update.packages}}
  }
%  \item{askAboutSuggests}{
%    Logical:  If TRUE, go through the list of packages on the
%    \code{Suggests} line of the \code{statnet/DESCRIPTION} and
%    ask whether to update each one.  If FALSE, ignore the
%    \code{Suggests} line altogether.
%  }
}
\description{
 Updates or, if necessary, installs the component packages of 
\pkg{statnet} that are on \code{CRAN}. This function is
essentially an alias for \code{\link{update.packages}},
and any arguments passed to \code{update_statnet} 
(except \code{oldPkgs} and \code{ask}) are 
passed directly to \code{\link{update.packages}}.  
The function will automatically update those packages listed in the
\code{Depends} line of the \code{statnet/DESCRIPTION} file.
Then, it will ask the user whether to update those packages listed
in the \code{Suggests} line.
}
\value{
  \code{update_statnet} returns NULL invisibly.  
}
\details{
  It does not provide 
  any output in the case that all packages are up to date, since
  \code{\link{update.packages}} does not.  However, 
  \code{\link{update.packages}} provides very informative feedback
  whenever a package is out of date.
}
\seealso{
  \code{\link{update.packages}}, \code{\link{install.packages}}
}
\examples{
\dontrun{
# Update from statnet.org
update_statnet(repos="http://statnet.csde.washington.edu")
}
}
\keyword{utilities}
