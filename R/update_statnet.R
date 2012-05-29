
# NB:  Package names can contain numbers but no statnet packages
#      currently do.  The regexps used in the two strsplit calls
#      below would need to be modified if they did.
update_statnet <- function(...) {
  # Extract the names of the packages to update.  First, the 
  # packages in the Depends line of statnet/DESCRIPTION:
  cat("Checking for newer versions of statnet and these other required packages:\n")
  a <- packageDescription("statnet", fields="Depends")
  b <- unlist( strsplit( a, '[^a-zA-Z.]+')) 
  b <- b[b!="R" & b!="."]
  cat(b, "\n\n")
  update.packages(oldPkgs=c(b, "statnet"), ask=F, ...)
  
  # Next, the packages in the Suggests line of statnet/DESCRIPTION:
  cat("Checking for newer versions of these suggested packages:\n")
  a <- packageDescription("statnet", fields="Suggests")
  if (!is.na(a)) {
    b <- unlist( strsplit( a, '[^a-zA-Z.]+')) 
    b <- b[b!="."]
    cat(b, "\n\n")
    update.packages(oldPkgs=b, ask="graphics", ...)
#  cat("Type Y if you want each of the following suggested",
#      "packages to be updated:\n")
#  for (s in b) {
#    cat(s)
#    ans <- scan(what=character(), n=1, quiet=TRUE)
#    if (length(ans)>0 && (ans=='Y' || ans=='y')) {
#      update.packages(oldPkgs=s, ..., )
#    }
#  }
  }
  invisible(NULL)
}


