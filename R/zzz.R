#
# .First.lib is run when the package is loaded.
#
.First.lib <- function(lib, pkg){
    DESCpath <- file.path(system.file(package="statnet"), "DESCRIPTION")
    info <- read.dcf(DESCpath)
    cat('\nstatnet:', info[,"Title"], 
        '\nVersion', info[,"Version"], 'created on', info[,"Date"], '\n') 
    cat(paste("copyright (c) 2003, Mark S. Handcock, University of Washington\n",
"                    David R. Hunter, Penn State University\n",
"                    Carter T. Butts, University of California-Irvine\n",
"                    Steven M. Goodreau, University of Washington\n",
"                    Pavel N. Krivitsky, Carnegie Mellon University\n",
"                    Martina Morris, University of Washington\n",sep=""))
    cat('Type help(package="statnet") to get started.\n\n')
    cat('Based on "statnet" project software (http://statnet.org).\n',
        'For license and citation information see http://statnet.org/attribution\n',
        'or type citation("statnet").\n')
}
