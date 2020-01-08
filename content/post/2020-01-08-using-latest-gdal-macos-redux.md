---
author:
- achubaty
date: "2020-01-08"
title: "Using the latest GDAL with R packages on macOS - redux"
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

As an update to an [earlier post](/post/2016-12-13-using-latest-gdal-macos), here's how to use the latest versions of GDAL/PROJ with R spatial packages.

## Install GDAL

```bash
brew install pkg-config
brew install gdal
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
