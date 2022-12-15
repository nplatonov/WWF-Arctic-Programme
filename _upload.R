if (T) {
   Sys.setenv(GITHUB_PAT="")
   ret <- c(add=999,commit=999,push=999)
   ret[1] <- system("git add -A")
   if (!(ret[2] <- system("git commit -m\"ongoing\"")))
      ret[3] <- system("git push")
   print(ret)
}
