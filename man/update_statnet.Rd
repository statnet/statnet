\name{update_statnet}
\alias{update_statnet}
\alias{update.statnet}
\title{Updates or Installs the Component Packages of statnet}
\usage{
update_statnet(object, \dots,
            contriburl = "http://statnet.org",
            repos = getOption("repos"), type = getOption("pkgType"),
            ask=TRUE)
}
\description{
 Updates or, if necessary, installs the component packages of 
\pkg{statnet}. Many of the packages are on \code{CRAN}. The rest are on
 the \pkg{statnet} webpage (\url{http://statnet.org}).
 This command can be used immediately after installing \pkg{statnet}
 from \code{CRAN} to install the component packages.
It also can be used at any subsequent point to update the packages to their
latest versions.
 Consult the webpage for more information.
}
\arguments{
  \item{object}{an optional vector of the names of the packages to install. 
By default it updates or installs all the component packages of \pkg{statnet}.}
  \item{\dots}{Additional arguments (currently none).}
  \item{contriburl}{URL of the contrib section of the
    repositories. By default this is the URL of the \pkg{statnet} webpage
    (\url{http://statnet.org}). Overrides argument \code{repos}.
#ifdef unix
    Can be \code{NULL} to install from local \file{.tar.gz} files.
#endif
#ifdef windows
    Can also be \code{NULL} to install from local \file{.zip} files.
#endif
  }
% \item{contriburl}{URL of the \pkg{statnet} webpage
%       (\url{http://statnet.org})}
  \item{repos}{character vector, the base URL(s) of the repositories
    to use, i.e., the URL of the CRAN master such as
    \code{"http://cran.r-project.org"} or its Statlib mirror,
    \code{"http://lib.stat.cmu.edu/R/CRAN"}.
#ifdef unix
    Can be \code{NULL} to install from local \file{.tar.gz} files.
#endif
#ifdef windows
    Can be \code{NULL} to install from local \file{.zip} files.
#endif
  }
  \item{type}{character, indicating the type of \pkg{statnet}
    package to download and install.
    Possible values are \code{"base"} (for packages essential to \pkg{statnet}),
    \code{"recommended"} (for packages needed for a significant part of
     \pkg{statnet} functionality) and \code{"optional"}
    (for packages with specialized \pkg{statnet} functionality).
  }
  \item{ask}{logical indicating whether to ask user which packages
    ins \pkg{statnet} to update or install.
    The default is \code{ask = TRUE}. If \code{ask = FALSE} then all packages
    are updated and/or installed.
  }
}
\details{
  While this function has a number of options, few users will change the defaults
  and they are not intended to be altered except in rare circumstances.

  The main function is to install a functional set of
  \pkg{statnet} packages.  First a list
  of all packages found in the default library
  (the first directory in \code{.libPaths()})
% \code{lib.loc}
  is created and compared with those available at the \pkg{statnet}
  repositories (\code{CRAN} and \url{http://statnet.org}).
  If \code{ask = TRUE} (the default for "recommended" and "optional", 
  but not for "base") packages with a newer version are
  reported and for each one the user can specify if it should be
  updated.
}
\value{
  \code{\link{update_statnet}} has no return value.
}
\section{Warning}{
  This function may fail in rare circumstances. If so, send email to
  the \pkg{statnet} Users Group at 
  \code{statnet_help@u.washington.edu}. See the link on
  \url{http://statnet.org} for how to join it.
}
\seealso{
  \code{\link{install.packages}}.
}
\examples{
\dontrun{
update_statnet()
}
}
\keyword{utilities}
