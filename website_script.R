#install necessary
install.packages(c("distill","postcards"))

#check versions
packageVersion("distill")
packageVersion("rmarkdown")
packageVersion("postcards")

library(distill)
create_website(dir = ".", title = "mfeo", gh_pages = TRUE)

library(postcards)
#create postcard
create_postcard(file = "tobi.Rmd") # future name of .Rmd file

#postcard theme
create_theme("postcards")

#create blog
create_post("welcome")

#edit blog
file.edit("blog.rmd")
