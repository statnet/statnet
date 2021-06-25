#' Easily Install and Load the \code{statnet} Packages for Statistical Network
#' Analysis
#' 
#' \code{statnet} is a collection of software packages for statistical network
#' analysis that are designed to work together, with a common data structure
#' and API, to provide seamless access to a broad range of network analytic and
#' graphical methodology.  This package is designed to make it easy to install
#' and load multiple \code{statnet} packages in a single step.
#' 
#' \code{statnet} software implements advances in network modeling based on
#' exponential-family random graph models (ERGM), as well as latent space
#' models and more traditional descriptive network methods. Together,
#' the set of packages provide a comprehensive framework for "tie-based" 
#' network analysis:  analyzing the distribution of ties in cross-sectional 
#' and dynamic networks.  There are tools for description, visualization
#' model estimation, model evaluation, and model-based network simulation.  
#' The statistical estimation and simulation functions
#' are based on a central Markov chain Monte Carlo (MCMC) algorithm that
#' has been optimized for speed and robustness.
#' 
#' The code is actively developed and maintained by the \code{statnet}
#' development team. New functionality is being added over time.
#' 
#' \code{statnet} packages are written in a combination of and \code{C} It is
#' can be used interactively from within the graphical user interface via a
#' command line, or in non-interactive (or ``batch'') mode to
#' allow longer or multiple tasks to be processed without user interaction.
#' The Statnet project uses an
#' open development process for the packages, hosted
#' on GitHub \url{https://github.com/statnet}, and contributions can be made
#' via pull requests.  Current versions of the packages are
#' available on the Comprehensive \R Archive Network (CRAN) at
#' \url{https://www.r-project.org/}.
#' 
#' Extensive workshop and training materials are also available online, 
#' please see the \code{statnet} project
#' website at \url{https://www.statnet.org/} for more information.
#' 
#' The full suite of packages has the following components (those automatically
#' downloaded with the \pkg{statnet} package are noted):
#' 
#' For data handling:
#'   
#' \itemize{
#' 
#'     \item \pkg{network} is a package to create, store, modify and plot
#'     the data in network objects.  The \code{\link[network]{network}}
#'     object class, defined in the \pkg{network} package, can represent a
#'     range of relational data types and it supports arbitrary vertex /
#'     edge /graph attributes. Data stored as
#'     \code{\link[network]{network}} objects can then be analyzed using
#'     all of the component packages in the \pkg{statnet} suite. 
#'     (automatically downloaded)
#' 
#'     \item \pkg{networkDynamic} extends \pkg{network} with functionality
#'     to store information about about evolution of a network over time,
#'     defining a \code{\link[networkDynamic]{networkDynamic}} object
#'     class that tracks changes in the status of nodes and links. 
#'     (automatically downloaded)
#'
#' }
#'     
#' For analyzing cross-sectional networks:
#' 
#' \itemize{
#'   
#'     \item \pkg{sna} is a set of tools for traditional social network
#'     analysis. 
#'     (automatically downloaded)
#' 
#'     \item \pkg{ergm} is a collection of functions to fit, simulate from,
#'     plot and assess exponential-family random graph models. The main
#'     functions within the \pkg{ergm} package are 
#'     \code{\link[ergm]{ergm}}, a function to fit linear exponential
#'     random graph models in which the probability of a graph is dependent
#'     upon a vector of graph statistics specified by the user;
#'     \code{\link[ergm]{simulate}}, a function to simulate random graphs using an ERGM;
#'     \code{\link[ergm]{mcmc.diagnostics}}, a function for assessing model convergence;
#'     and \code{\link[ergm]{gof}}, a function to evaluate the goodness of
#'     fit of an ERGM to the data. The package supports the analysis of both
#'     binary and continuously valued ties. 
#'     (automatically downloaded)
#' 
#'     \item \pkg{ergm.count} is an extension to \pkg{ergm} enabling it to
#'     fit models for networks with ties measured as counts. 
#'     (automatically downloaded)
#' 
#'     \item \pkg{ergm.rank} is an extension to \pkg{ergm} enabling it to
#'     fit models for networks with ties measured as ranks. 
#'     (automatically downloaded)
#' 
#'    \item \pkg{ergm.ego} is an extension to \pkg{ergm} enabling it to
#'     fit models for networks based on egocentrically sampled network data. 
#'     (automatically downloaded)
#'     
#'     \item \pkg{latentnet} is a package to fit and evaluate latent position
#'     and cluster models for statistical networks The probability of a tie
#'     is expressed as a function of distances between these nodes in a
#'     latent space as well as functions of observed dyadic level
#'     covariates. 
#'     (automatically downloaded)
#'     
#'     \item \pkg{statnetWeb} is a shiny app that provides access to basic tools
#'     from \pkg{network}, \pkg{sna} and \pkg{ergm} for network analysis.  
#'     This is a great package for teaching an introductory course, or for learning
#'     about basic \pkg{statnet} functionality in a user-friendly interactive
#'     app that runs in a web-browser.  Running the online version of the app 
#'     does not require any software to be downloaded or installed.
#'     (separate download required)
#'     
#' }
#' 
#'     
#' For temporal (dynamic) network analysis:
#'   
#' \itemize{
#'   
#'     \item \pkg{tsna} is a collection of extensions to \pkg{sna} that 
#'     provide descriptive summary statistics for temporal networks. 
#'     (automatically downloaded)
#'     
#'     \item \pkg{tergm} is a collection of extentions to \pkg{ergm}
#'     for fitting discrete time models for temporal (dynamic) networks.  
#'     Like \pkg{ergm}, \pkg{tergm} has functions for estimation 
#'     (\code{\link[tergm]{tergm}}),
#'     and simulation 
#'     (\code{\link[tergm]{simulate.tergm}}\code{}, and uses the
#'     \pkg{ergm} functions for model diagnostics and assessment.
#'     \pkg{tergm} can be used 
#'     with two different types of discrete temporal network data:  
#'     a time-series network panel 
#'     (using conditional maximum likelihood estimation), or a 
#'     single cross-sectional
#'     network with ancillary data on tie duration (using equilibrium generalized
#'     method of moments). 
#'     (automatically downloaded)
#' 
#'     \item \pkg{relevent} is a package providing tools to fit continuous 
#'     time relational event models. 
#'     (automatically downloaded)
#'     
#'     \item \pkg{ndtv} is a package for visualizing temporal network data.
#'     It renders dynamic network data from 'networkDynamic' 
#'     objects as movies, interactive animations, or other representations 
#'     of changing relational structures and attributes. 
#'     (automatically downloaded)
#' 
#' }
#'     
#'   Additional utilities and packages:
#' 
#' \itemize{
#' 
#'    \item \pkg{statnet.common} provides utilities for all the statnet packages.
#'     (automatically downloaded)
#' 
#'    \item \pkg{rle} provides utilities for "run-length-encoded" data.
#'     (automatically downloaded)
#'   
#'    \item \pkg{ergm.userterms} provides a template for users who want to
#'     write their own new ERGM terms.
#'     (separate download required)
#'     
#'     \item \pkg{degreenet} is a package for the statistical modeling of
#'     degree distributions of networks. It includes power-law models such
#'     as the Yule and Waring, as well as a range of alternative models
#'     that have been proposed in the literature. 
#'     (separate download required)
#' 
#'     \item \pkg{networksis} is a package to simulate bipartite graphs 
#'     with fixed marginals through sequential importance sampling.
#'     (separate download required)
#'     
#'     \item \pkg{EpiModel} is a package for simulating epidemic dynamics.
#'     This package provides access
#'     to a wide range of epidemic modeling frameworks, 
#'     with functions for deterministic compartmental
#'     models, individual-based models, network models. The network
#'     models are based on the \pkg{statnet} suite.  See the Epimodel
#'     Project website for more information \url{https://www.epimodel.org/}.
#'     (separate download required)
#' }
#'   
#'     
#' \pkg{statnet} is a metapackage; its only purpose is to provide a convenient
#' mechanism for installing the core packages in the \code{statnet} suite.  
#' Those can, of course, also be installed individually.
#' 
#' Each package in \code{statnet} has associated help files and internal
#' documentation.  For the reference paper(s) that provide information on 
#' the theory and methodology behind each specific package
#' use the \code{citation("packagename")} function in \R after loading \pkg{statnet}.
#' 
#' We have invested much time and effort in creating the
#' \code{statnet} suite of packages and supporting material
#' so that others can use and build on these tools.
#' We ask in return that you cite it when you use it.
#' For publication of results obtained from \pkg{statnet}, the original
#' authors are to be cited as described in \code{citation("statnet")}.
#' If you are only using specific
#' package(s) from the suite, please cite the specific
#' package(s) as described in the appropriate
#' \code{citation("packgename")}.  Thank you!
#' 
#' @name statnet-package
#' @aliases statnet-package statnet
#' @docType package
#' @author Mark S. Handcock \email{handcock@@stat.ucla.edu},\cr David R. Hunter
#' \email{dhunter@@stat.psu.edu},\cr Carter T. Butts
#' \email{buttsc@@uci.edu},\cr Steven M. Goodreau \email{goodreau@@uw.edu},\cr
#' Pavel N. Krivitsky \email{pavel@@uow.edu.au}, \cr Skye Bender-deMoll
#' \email{skyebend@@skyeome.net}, \cr Samuel Jenness (for EpiModel)
#' \email{samuel.m.jenness@@emory.edu}, and \cr Martina Morris
#' \email{morrism@@uw.edu}
#' 
#' Maintainer: Martina Morris \email{morris@@uw.edu}
#'
#' 
## Token imports
#' @import statnet.common ergm.count
#' @importFrom ergm ergm
#' @importFrom network network
#' @importFrom networkDynamic networkDynamic
#' @importFrom tergm tergm
#' @importFrom sna netlm
#' @importFrom tsna forward.reachable
NULL



