---
author:
- achubaty
date: "2016-12-13"
title: "Using the latest GDAL with R packages on macOS"
tags: ["R"]
featured: false
draft: false
math: false
diagram: false

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
image:
  caption: ""
  focal_point: ""

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references
#   `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects: []
---

I wanted to play around with the new [`sf`](https://cran.r-project.org/package=sf
) package, which requires the latest GDAL (>= 2.0.0), GEOS (>= 3.3.0), and PROJ.4 (>= 4.8.0).
However, the version of GDAL [installed via `brew`]({{< relref "2014-08-05-installing-rgdal-osx.md" >}}) is 1.11.4, so I needed to update to the latest version and reinstall a few R packages in order to get `sf` to work on macOS.

## Update GDAL

```bash
## unlink the previous GDAL version
brew unlink gdal

## update GDAL to the latest version (2.1.2)
brew tap osgeo/osgeos4mac
brew install gdal2
brew link --force gdal2
```

## (Re)install R spatial packages

Next, we need to install a few packages from source in order to use the new GDAL libraries:

```r
## (re)install spatial packages from source
install.packages(c("rgeos", "sf", "sp"), type = "source")

## rgdal requires some additional configuration to build correctly:
##   based on http://stackoverflow.com/a/26836125/1380598
install.packages("rgdal", type = "source",
                 configure.args = c("--with-proj-include=/usr/local/include",
                                    "--with-proj-lib=/usr/local/lib"))
library(rgdal) ## confirm the GDAL version being used
```
