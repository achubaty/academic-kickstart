---
author:
- achubaty
date: "2014-08-05"
title: "Installing rgdal on OSX"
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

This is actually really easy to do, but most of the google hits I came across were old (from 2010) or horribly complex (building `gdal` and `proj4` from source then building `rgdal` itself).

First, this assumes you already have `homebrew` installed [^1]. If not, see [http://brew.sh/](http://brew.sh/) for the one-liner terminal install.

Next, install `gdal`:

```
brew install gdal
```

Then open `RStudio` (for some reason it didn't work using R in the terminal...) and install the package from source:

```
install.packages("rgdal", type="source")
```

That's it. Seriously easy.

[^1]: If you use `macports` the process is similarly simple. See [here](http://www.janosgyerik.com/installing-rgdal-in-r-on-os-x-mavericks/).

*Update: fixed typos in `brew` commands*
