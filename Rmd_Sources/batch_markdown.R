require(rmarkdown)

rmd_files <- list.files('~/@work/r-lotw/Rmd_Sources',pattern="*.Rmd",full.names=TRUE)

for(f in rmd_files) {
  render(f)
}

html_files <- list.files('~/@work/r-lotw/Rmd_Sources',pattern="*.html",full.names=TRUE)

for(i in 1:length(html_files)) {
  system(paste("mv ",html_files[i]," ~/@work/r-lotw/source/_posts/",strsplit(html_files,"/")[[i]][7],sep=""))
}
