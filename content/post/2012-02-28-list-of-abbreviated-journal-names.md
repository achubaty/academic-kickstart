---
author:
- achubaty
date: "2012-02-28"
title: "list of abbreviated journal names"
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

As a followup to my [previous post](/post/2012-02-09-abbreviated-journal-names-in-mendeley-updated), I wrote a script to generate the master list of journal names and their abbreviations from Web of Science.

The script is designed to be used in conjunction with the [previous one](/post/2012-02-09-abbreviated-journal-names-in-mendeley-updated), and is also written in perl (which I'm still learning) and can be downloaded [here](/uploads/2013/04/getJlist.txt) or viewed [here](http://pastebin.com/6tr7hec4). Improvements and suggestions welcome.

At the bottom of the script is a list of my custom journal names and abbreviations. Feel free to adjust the script to suit your needs.

To run the script:

- save it to the *jabbrev* directory;
- open a terminal and type:

    ```
    cd path/to/jabbrev
    mv getJlist.txt getJlist.pl
    chmod a+x getJlist.pl
    ./getJlist.pl
    ```

The script replaces the `masterlist.txt` file with one containing the recently downloaded list of journals. Alternatively, just [download the masterlist.txt file directly](/uploads/2013/04/masterlist.txt). Because this master list is pretty big (~3.7 MB), you'll want to extract only those journals that are in your Mendeley database. To do this,  run `script.pl` ([see previous post](/post/2012-02-09-abbreviated-journal-names-in-mendeley-updated)).

