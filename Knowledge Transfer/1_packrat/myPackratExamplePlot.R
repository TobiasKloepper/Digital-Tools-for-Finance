# This is a R script with some packages needed.

# So this is how it worked for me. 
# First, I installed packrat. Then I set the work directory to the project folder. Than I ran
# packrat::init(). The first time I ran it, it tried to install all the packages I already have and
# stuff just broke down. It didn't even create the 'lib' folder. So I deleted everything it had
# created in the directory and I started over.

# So I created this script here. When I close RStudio and open THIS VERY FILE, RStudio opens
# without any of my original packages in my library. However, if I close RStudio again and just
# open the executable in Explorer, everything is back to normal.

# As a test, running library(tidyverse) yields: "Error in library(tidyverse) : there is no package called 'tidyverse'"

# So let's install it:
#install.packages("tidyverse")
# Installing package into '~/Project - Master Repo/Packrat/packrat/lib/x86_64-w64-mingw32/4.0.2'

# Let's make a plot:
library(tidyverse)


diamonds %>% filter(cut == "Premium") %>%
  ggplot(aes(x = carat, y = price)) +
  geom_point(aes(color = color)) +
  geom_smooth()

# Cool.

# Now I run packrat::status() and get a huge list with the packages that have just been installed
# via tidyverse.

# The following packages have been updated in your library, but have not been recorded in packrat:

# library   packrat
# DBI               1.1.1        NA
# R6                2.5.1        NA
# RColorBrewer      1.1-2        NA
# and so on and so on...

# Okay, let's run packrat::snapshot().

# Adding these packages to packrat:
#   _       
# DBI             1.1.1 
# R6              2.5.1 
# RColorBrewer    1.1-2 
# Rcpp            1.0.7 
# bla
# bla
# bla...
# Fetching sources for DBI (1.1.1) ... OK (CRAN current)
# Fetching sources for R6 (2.5.1) ... OK (CRAN current)
# Fetching sources for RColorBrewer (1.1-2) ... OK (CRAN current)
# Fetching sources for Rcpp (1.0.7) ... OK (CRAN current)
# bla
# bla...
# bla...
# Snapshot written to "~/Project - Master Repo/Packrat/packrat/packrat.lock"


#> packrat::status()
#Up to date.

# Cool.
# Now I made a commit and pushed to Git.

# Let's close RStudio, delete the library folder and open this script again.

# After deleting the 'lib' and 'src' folders and stuff, now I see all the old-school packages
# I had listed there --> even after just opening RStudio by clicking on this script. I assume that if my library collection was smaller
# I'd have only the basic packages to see.

# Let's do packrat::status()

# The following packages are used in your code, tracked by packrat, but no longer present in your library:
# from   to
# DBI             1.1.1   NA
# R6              2.5.1   NA
# RColorBrewer    1.1-2   NA
# and so on...
#
#
# Use packrat::restore() to restore these libraries.

# okay, running packrat::restore()

# Installing evaluate (0.14) ... 
# OK (built source)
# Installing fansi (0.5.0) ... 
# OK (built source)
# Installing farver (2.1.0) ... 
# OK (built source)
# and on on...

# Cool. It's a quite slow though.
# Bra, this takes forever! I think it's because it's seeking each package
# individually, rather than just downloading 'tidyverse' all at once.

# Okay, done.
# Now let's restart RStudio from this script and try to produce the plot.

# Great! There it is.
