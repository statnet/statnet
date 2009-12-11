#  File R/update.statnet.R
#  Part of the "statnet" package, http://statnet.org
#
#  This software is distributed under the GPL-3 license.  It is free,
#  open source, and has the attribution requirements (GPL Section 7) in
#    http://statnet.org/attribution
#
# Copyright 2003 Mark S. Handcock, University of Washington
#                David R. Hunter, Penn State University
#                Carter T. Butts, University of California - Irvine
#                Martina Morris, University of Washington
# Copyright 2007 statnet Development Team
#
# We have invested a lot of time and effort in creating 'statnet',
# for use by other researchers. We require that the attributions
# are retained with each function.
######################################################################
"update_statnet" <- function(object, ..., 
            contriburl = "http://statnet.org",
            repos = getOption("repos"), type = getOption("pkgType"),
            ask=TRUE)
{
  cran.contriburl <- contrib.url(repos, type)
  if(contriburl %in% c("http://csde.washington.edu/statnet",
                       "csde.washington.edu/statnet",
                       "statnet.org",
                       "www.statnet.org",
                       "http://www.statnet.org",
                       "http://statnet.org"
                      )){
     contriburl <- "http://csde.washington.edu/statnet"
  }
  cat(paste("Collecting information necessary for the install...\n",sep=""))
  cran.Base <- c("network", "latentnet", "sna", "statnet", "ergm", "degreenet")
  csde.Base <- c()
  cran.Recommended <- c("coda")
  csde.Recommended <- c()
# cran.Optional <- c("netdata")
  cran.Optional <- c("networksis")
  csde.Optional <- c("netperm","rSoNIA")
  cran.Base.latentnet <- c("abind", "shapes")
#
  if(missing(object)){
    object <- c(cran.Base, csde.Base, cran.Recommended,
                csde.Recommended, cran.Optional, csde.Optional)
  }
#
# local install functions
#
  really.detach <- function(packages, verbose=TRUE){
   for(pkg in packages){
    inuse <- match(paste("package:",pkg,sep=""), search())
    if(!is.na(inuse)){
     silentwarnings <- capture.output(
      try(detach(pos=inuse, unload=TRUE),silent=TRUE)
                                     )
     if(!inherits(silentwarnings, "try-error")){
      if(verbose){
       cat(paste("Detaching package '", pkg,"'.\n",sep=""))
      }
      inuse <-  grep(paste("/",pkg,"$",sep=""),searchpaths())
      if(length(inuse)>0){
       inuse <- searchpaths()[inuse]
       library.dynam.unload(paste(pkg,".so",sep=""),inuse)
      }
    }
   }
  }
  invisible()
  }
  statnet.install <- function(object, csde, contriburl=cran.contriburl,
                              ask=FALSE, type="recommended",
                              update.pkgs=update.cran.pkgs){
    pma <- match(csde, object)
    csde <- object[pma[!is.na(pma)]]
    for(pkg in csde){
      cat(paste("=========================================\n",sep=""))
      if(pkg %in% update.pkgs){
       cat(paste("Attempting to update package '", pkg,"'.\n",sep=""))
       really.detach(pkg)
       if(ask){
        if(type == "recommended"){
         cat(paste("It is recommended you update '",pkg,"'.\n", sep=""))
        }
        if(type == "optional"){
         cat(paste("It is optional to update '",pkg,"'.\n",sep=""))
        }
        answer<-substr(readline(paste("Update ",type," package '",pkg,"' (y/n)?  ", sep="")),1,1)
        if (answer == "y" | answer == "Y"){
         install.packages(pkg, lib=.libPaths()[1], contriburl=contriburl)
        }
       }else{
        install.packages(pkg, lib=.libPaths()[1], contriburl=contriburl)
       }
      }else{
       cat(paste("Package '", pkg,"' is now up-to-date.\n",sep=""))
      }
    }
  invisible()
  }
# Detach the packages to avoid conflicts
  really.detach(object)
# CSDE
  new.csde.pkgs <- new.packages(lib.loc=.libPaths()[1],contriburl=contriburl)
  old.csde.pkgs <- old.packages(lib.loc=.libPaths()[1],contriburl=contriburl)[,1]
  update.csde.pkgs <- c(new.csde.pkgs, old.csde.pkgs)
# CRAN
  new.cran.pkgs <- new.packages(lib.loc=.libPaths()[1])
  old.cran.pkgs <- old.packages(lib.loc=.libPaths()[1])[,1]
  update.cran.pkgs <- c(new.cran.pkgs, old.cran.pkgs)
#
  if(ask){
   answer<-substr(readline(paste(" Install and update all packages (y)\n   or select individual packages (n)?  ", sep="")),1,1)
  }else{
   answer<-TRUE
  }
  if (answer == "y" | answer == "Y" | answer == ""){
   statnet.install(object, cran.Base, ask=FALSE, type="base")
   really.detach(object)
   statnet.install(object, csde.Base, ask=FALSE, type="base",
                   update.pkgs=update.csde.pkgs, contriburl=contriburl)
   really.detach(object)
   statnet.install(object, cran.Recommended, ask=FALSE, type="recommended")
   really.detach(object)
   statnet.install(object, csde.Recommended, ask=FALSE, type="recommended",
                   update.pkgs=update.csde.pkgs, contriburl=contriburl)
   really.detach(object)
   statnet.install(object, cran.Optional, ask=FALSE, type="optional")
   really.detach(object)
   if( 'rSoNIA' %in% csde.Optional &&  
      !('dynamicnetwork' %in% (installed.packages())[,"Package"])){
      cat("\n\n'rSoNIA' requires 'dynamicnetwork' to be installed manually before it can be installed. 'rSoNIA' has not been installed.\n Instructions for downloading and installing a working system are located at 'http://csde.washington.edu/~skyebend/installDynamicnetwork.html'\n\n\n")
      csde.Optional <- csde.Optional[csde.Optional != "rSoNIA"]
   }
   statnet.install(object, csde.Optional, ask=FALSE, type="optional",
                   update.pkgs=update.csde.pkgs, contriburl=contriburl)
   really.detach(object)
  }else{
   statnet.install(object, cran.Base, ask=FALSE, type="base")
   really.detach(object)
   statnet.install(object, csde.Base, ask=FALSE, type="base",
                   update.pkgs=update.csde.pkgs, contriburl=contriburl)
   really.detach(object)
   statnet.install(object, cran.Recommended, ask=TRUE, type="recommended")
   really.detach(object)
   statnet.install(object, csde.Recommended, ask=TRUE, type="recommended",
                   update.pkgs=update.csde.pkgs, contriburl=contriburl)
   really.detach(object)
   statnet.install(object, cran.Optional, ask=TRUE, type="optional")
   really.detach(object)
   if( 'rSoNIA' %in% csde.Optional &&  
      !('dynamicnetwork' %in% (installed.packages())[,"Package"])){
      cat("\n\n'rSoNIA' requires 'dynamicnetwork' to be installed manually before it can be installed. 'rSoNIA' has not been installed.\n Instructions for downloading and installing a working system are located at 'http://csde.washington.edu/~skyebend/installDynamicnetwork.html'\n\n\n")
      csde.Optional <- csde.Optional[csde.Optional != "rSoNIA"]
   }
   statnet.install(object, csde.Optional, ask=TRUE, type="optional",
                   update.pkgs=update.csde.pkgs, contriburl=contriburl)
   really.detach(object)
  }
#
# check required packages for latentnet
#
  inst.pkgs <- as.vector(installed.packages()[,1])
  if("latentnet" %in% inst.pkgs){
    statnet.install(cran.Base.latentnet, cran.Base.latentnet, ask=FALSE, type="base")
    really.detach(object)
  }
#
  cat(paste("=========================================\n",sep=""))
  cat(paste("'statnet' is now up-to-date.\n",sep=""))
  require(statnet)
  invisible()
}
