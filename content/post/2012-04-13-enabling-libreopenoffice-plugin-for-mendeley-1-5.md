---
author:
- achubaty
date: "2012-04-13"
title: "enabling Libre/OpenOffice plugin for Mendeley 1.5"
tags: ["Mendeley"]
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

I upgraded to using [Mendeley](http://mendeley.com) v 1.5 (because previous versions don't work on Ubuntu 12.04 Precise) and I had problems installing the OpenOffice plugin. Normally this is easy: in Mendeley you select the *Tools* menu and go to *Install OpenOffice Plugin*. However, for whatever reason the software can't find the plugin, and I get this error:

    Mendeley couldn't locate unopkg in the default location.
    It should be in the 'program' subdirectory of the path where
    OpenOffice is installed. Please press OK to locate it.

Fortunately, it was easy to find and install. I clicked *OK* and closed the file browser window that popped up. Then I opened a nautilus window (file browser), clicked the search button, selected my filesystem's root partiton (see image below) and searched for `.oxt`, which is the file extension used for OpenOffice and LibreOffice plugins. My search returned the pulgin for version 1.5 (plus some older versions I had previously installed).

After right-clicking the plugin file and selecting *Open with LibreOffice* started the install, which I confirmed and voila!

