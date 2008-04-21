#  File R/zzz.R
#  Part of the "statnet" package, http://statnetproject.org
#
#  This software is distributed under the GPL-3 license.  It is free,
#  open source, and has the attribution requirements (GPL Section 7) in
#    http://statnetproject.org/attribution
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
#
# .First.lib is run when the package is loaded.
#

.First.lib <- function(lib, pkg){
    ehelp <- library(help="statnet",lib.loc=NULL,character.only=TRUE)$info[[1]]
    cat(paste(substring(ehelp[4],first=16),"\n",
              "Version ",substring(ehelp[2],first=16),
              " created on ",
               substring(ehelp[3],first=16),".\n", sep=""))
    cat(paste("copyright (c) 2003, Mark S. Handcock, University of Washington\n",
"                    David R. Hunter, Penn State University\n",
"                    Carter T. Butts, University of California-Irvine\n",
"                    Steven M. Goodreau, University of Washington\n",
"                    Martina Morris, University of Washington\n",sep=""))
    cat('Type help(package="statnet") to get started.\n\n')
    cat('Based on "statnet" project software (http://statnetproject.org).\n',
        'For license and citation information see http://statnetproject.org/attribution\n',
        'or type citation("statnet").\n')
}


