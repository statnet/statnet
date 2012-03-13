\name{update_statnet}
\alias{update_statnet}
\title{Updates the Component Packages of statnet}
\usage{
update_statnet(\dots, askAboutSuggests=TRUE)
}
\arguments{
  \item{\dots}{
    Arguments passed to \code{\link{update.packages}}
  }
  \item{askAboutSuggests}{
    Logical:  If TRUE, go through the list of packages on the
    \code{Suggests} line of the \code{statnet/DESCRIPTION} and
    ask whether to update each one.  If FALSE, ignore the
    \code{Suggests} line altogether.
  }
}
\description{
 Updates or, if necessary, installs the component packages of 
\pkg{statnet} that are on \code{CRAN}. This function is
essentially an alias for \code{\link{update.packages}},
and any arguments passed to \code{update_statnet} are 
passed directly to \code{\link{update.packages}}.  
The function will update those packages listed in the
\code{Depends} line of the \code{statnet/DESCRIPTION} file.
Then, if \code{askAboutSuggests} is TRUE, it will do the
same thing for the \code{Suggests} line, but asking for each 
package whether to update it or not.
}
\value{
  \code{update_statnet} returns NULL invisibly.  
}
\seealso{
  \code{\link{update.packages}}, \code{\link{install.packages}}
}
\examples{
\dontrun{
# Update from statnet.org
update_statnet(repos="http://csde.washington.edu/statnet")
}
}
\keyword{utilities}
