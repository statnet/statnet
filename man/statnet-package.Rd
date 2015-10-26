\name{statnet-package}
\alias{statnet-package}
\docType{package}
\title{
A Suite of Packages for the Statistical Modeling of Network Data
}
\description{
\pkg{statnet} is a suite of software packages for statistical network analysis.
The packages implement recent advances in network modeling based on
exponential-family random graph models (ERGM), as well as latent space
models and more traditional network methods. The components of the package
provide a comprehensive framework for ERGM-based network modeling: tools for
model estimation, for model evaluation, for model-based network simulation, and
for network visualization. This broad functionality is powered by a central
Markov chain Monte Carlo (MCMC) algorithm. The coding is optimized for speed
and robustness.
}

\details{
  \pkg{statnet} packages are written in a combination of \R and
  \code{C} It is usually used interactively from within the \R graphical
  user interface via a command line. it can also be used in
  non-interactive (or ``batch'') mode to allow longer or multiple tasks
  to be processed without user interaction.  The suite of packages are
  available on the Comprehensive \R Archive Network (CRAN) at
  \url{http://www.r-project.org/} and also on the \pkg{statnet} project
  website at \url{http://statnet.org/}

  The \pkg{statnet} suite of packages has the following components:

  \itemize{

    \item \pkg{ergm} is a collection of functions to fit, simulate from,
    plot and evaluate exponential random graph models. The main
    functions within the \pkg{ergm} package are
    \code{\link[ergm]{ergm}}, a function to fit linear exponential
    random graph models in which the probability of a graph is dependent
    upon a vector of graph statistics specified by the user;
    \code{simulate}, a function to simulate random graphs using an ERGM;
    and \code{\link[ergm]{gof}}, a function to evaluate the goodness of
    fit of an ERGM to the data. \pkg{ergm} contains many other functions
    as well.

    \item \pkg{tergm} is a collection of extentions to \pkg{ergm}
    enabling it to fit models for dynamic networks.

    \item \pkg{ergm.count} is an extension to \pkg{ergm} enabling it to
    fit models for networks whose relations are counts.

    \item \pkg{ergm.userterms} provides a template for implementing new
    ERGM terms.
    
    \item \pkg{sna} is a set of tools for traditional social network
    analysis.
    
    \item \pkg{degreenet} is a package for the statistical modeling of
    degree distributions of networks. It includes power-law models such
    as the Yule and Waring, as well as a range of alternative models
    that have been proposed in the literature.

    \item \pkg{latentnet} is a package to fit and evaluate latent position
    and cluster models for statistical networks The probability of a tie
    is expressed as a function of distances between these nodes in a
    latent space as well as functions of observed dyadic level
    covariates.
    
    %% \item \pkg{netperm}: A package for permutation Models for relational
    %% data.  It provides simulation and inference tools for exponential
    %% families of permutation models on relational structures.

    \item \pkg{networksis} is a package to simulate bipartite graphs 
    with fixed marginals through sequential importance sampling.

    \item \pkg{relevent} is a package providing tools to fit relational
    event models.

    \item \pkg{network} is a package to create, store, modify and plot
    the data in network objects.  The \code{\link[network]{network}}
    object class, defined in the \pkg{network} package, can represent a
    range of relational data types and it supports arbitrary vertex /
    edge /graph attributes. Data stored as
    \code{\link[network]{network}} objects can then be analyzed using
    all of the component packages in the \pkg{statnet} suite.

    \item \pkg{networkDynamic} extends \pkg{network} with functionality
    to store information about about evolution of a network over time,
    defining a \code{\link[networkDynamic]{networkDynamic}} object
    class.
    
    \item \pkg{ndtv}: (Network Dynamic Temporal Visualization): Exports dynamic network data from networkDynamic objects as animated movies or other representations of relational structure and node attributes that change over time.
  
    \item \pkg{EpiModel}: Tools for building, solving, and plotting mathematical models of infectious disease, including stochastic models of disease on dynamic networks with demographic processes.
    }
    
    \pkg{statnet} is a metapackage, depending on all of the above
    packages, so that they can be installed together.
    
    Each of these components is described in detail in the references
    below.  Loading the \pkg{statnet} package into \R automatically
    loads them all. Each package has associated help files and internal
    documentation that is supported by the information on the Statnet
    Project website (\url{http://statnet.org/}). A tutorial, support
    mailing list, references and links to further resources are provided
    there.
    
    When publishing results obtained using this package the original
    authors are to be cited as described in
    \code{citation("statnet")}. In addition, please cite the specific
    package that you use.

    We have invested a lot of time and effort in creating the
    \code{statnet} suite of packages for use by other researchers.
    lease cite it in all papers where it is used.

}

\author{
Mark S. Handcock \email{handcock@stat.washington.edu},\cr
David R. Hunter \email{dhunter@stat.psu.edu},\cr
Carter T. Butts \email{buttsc@uci.edu},\cr
Steven M. Goodreau \email{goodreau@u.washington.edu},\cr
Pavel N. Krivitsky \email{pavel@cmu.edu}, and\cr
Martina Morris \email{morrism@u.washington.edu}

Maintainer: Pavel N. Krivitsky \email{krivitsky@stat.psu.edu}
}
\references{
Admiraal R, Handcock MS (2007).
 {\pkg{networksis}: Simulate bipartite graphs with fixed
  marginals through sequential importance sampling}.
 Statnet Project, Seattle, WA.
 Version 1, \url{http://statnet.org}.

Bender-deMoll S, Morris M, Moody J (2008).
 {Prototype Packages for Managing and Animating Longitudinal
  Network Data: \pkg{dynamicnetwork} and \pkg{rSoNIA}.}
 {Journal of Statistical Software}, {24} (7).
 \url{http://www.jstatsoft.org/v24/i07/}.

Besag, J., 1974, Spatial interaction and the statistical analysis
of lattice systems (with discussion), Journal of the Royal Statistical
Society, B, 36, 192-236.

Carter T. Butts (2014). 
  {\pkg{sna}: Tools for Social Network Analysis. R package}
  version 2.3-2. \url{http://CRAN.R-project.org/package=sna}

Butts C (2015). 
  {\pkg{network}: Classes for Relational Data}. 
  The Statnet Project (\url{http://www.statnet.org}). R package version 1.12.0,
  \url{CRAN.R-project.org/package=network}.

Butts CT (2008).
 {\pkg{network}: {A} Package for Managing Relational Data in \R.}
 {Journal of Statistical Software}, {24} (2).
 \url{http://www.jstatsoft.org/v24/i02/}.


Frank, O., and Strauss, D.(1986). Markov graphs. Journal of the American
Statistical Association, 81, 832-842. 

Goodreau SM, Handcock MS, Hunter DR, Butts CT, Morris M (2008a).
 {A \pkg{statnet} Tutorial.}
 {Journal of Statistical Software}, {24} (8).
 \url{http://www.jstatsoft.org/v24/i08/}.

Goodreau SM, Kitts J, Morris M (2008{{b}}).
 {Birds of a Feather, or Friend of a Friend? Using Exponential
  Random Graph Models to Investigate Adolescent Social Networks.}
 {Demography}, {45}, in press.

Handcock, M. S. (2003)
    \emph{Assessing Degeneracy in Statistical Models of Social Networks},
    Working Paper \#39, 
Center for Statistics and the Social Sciences,
University of Washington.
\url{www.csss.washington.edu/Papers/wp39.pdf}

Handcock MS (2003{{b}}).
 {\pkg{degreenet}: Models for Skewed Count Distributions Relevant
  to Networks}.
 Statnet Project, Seattle, WA.
 Version 1. Project homepage at \url{http://statnet.org},
 URL: \url{http://CRAN.R-project.org/package=degreenet}.

Handcock MS, Hunter DR, Butts CT, Goodreau SM, Morris M (2003{{a}}).
 {\pkg{ergm}: {A} Package to Fit, Simulate and Diagnose
  Exponential-Family Models for Networks}.
 Statnet Project, Seattle, WA.
 Version 2. Project homepage at \url{http://statnet.org},
 URL: \url{http://CRAN.R-project.org/package=ergm}.

Handcock MS, Hunter DR, Butts CT, Goodreau SM, Morris M (2003{{b}}).
 {\pkg{statnet}: Software tools for the Statistical Modeling of
  Network Data}.
 Statnet Project, Seattle, WA.
 Version 2. Project homepage at \url{http://statnet.org},
 URL: \url{http://CRAN.R-project.org/package=statnet}.

Hunter, D. R. and Handcock, M. S. (2006)
    \emph{Inference in curved exponential family models for networks},
   Journal of Computational and Graphical Statistics.

Hunter DR, Handcock MS, Butts CT, Goodreau SM, Morris M (2008{{b}}).
 {\pkg{ergm}: {A} Package to Fit, Simulate and Diagnose
  Exponential-Family Models for Networks.}
 {Journal of Statistical Software}, {24}(3).
 \url{http://www.jstatsoft.org/v24/i03/}.

Krivitsky PN (2012). Exponential-Family Random Graph Models for Valued
Networks. \emph{Electronic Journal of Statistics}, 2012, 6,
1100-1128. \href{http://dx.doi.org/10.1214/12-EJS696}{\code{doi:10.1214/12-EJS696}}
 
Krivitsky PN, Handcock MS (2008). 
Fitting Latent Cluster Models for Social Networks with \pkg{latentnet}.
 {Journal of Statistical Software}, {24}(5).
 \url{http://www.jstatsoft.org/v24/i05/}.

Krivitsky PN, Handcock MS (2007).
 {\pkg{latentnet}: Latent position and cluster models for
  statistical networks}.
 Seattle, WA.
 Version 2. Project homepage at \url{http://statnet.org},
 URL: \url{http://CRAN.R-project.org/package=latentnet}.

Morris M, Handcock MS, Hunter DR (2008).
 {Specification of Exponential-Family Random Graph Models:
  Terms and Computational Aspects.}
 {Journal of Statistical Software}, {24}(4).
 \url{http://www.jstatsoft.org/v24/i04/}.

Strauss, D., and Ikeda, M.(1990). Pseudolikelihood estimation for social
networks. Journal of the American Statistical Association, 85, 204-212. 
}
\keyword{ package }
\keyword{ models }
