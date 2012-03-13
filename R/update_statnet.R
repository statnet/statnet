update_statnet <- function(..., askAboutSuggests=TRUE) {
  # Extract the names of the packages to update.  First, the 
  # packages in the Depends line of statnet/DESCRIPTION:
  a <- packageDescription("statnet", fields="Depends")
  b <- strsplit(gsub('[^a-zA-Z.]+', ' ', a), " ")[[1]]
  b <- c(b[b!="R" || b!="."], "statnet")
  update.packages(..., oldPkgs=b)
  
  # Next, the packages in the Suggests line of statnet/DESCRIPTION:
  a <- packageDescription("statnet", fields="Suggests")
  if (is.na(a) || !askAboutSuggests) { return(invisible(NULL)) }
  b <- strsplit(gsub('[^a-zA-Z.]+', ' ', a), " ")[[1]]
  b <- b[b!="."]
  cat("Type Y if you want each of the following suggested",
      "packages to be updated:\n")
  for (s in b) {
    cat(s)
    ans <- scan(what=character(), n=1, quiet=TRUE)
    if (length(ans)>0 && (ans=='Y' || ans=='y')) {
      update.packages(oldPkgs=s, ...)
    }
  }
  invisible(NULL)
}


