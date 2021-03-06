---
author:
- achubaty
date: "2011-11-07"
title: "Custom Citation Styles in Mendeley"
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

I'm an avid user of [Mendeley](http://www.mendeley.com/) citation management software (CMS), and am pleased with the capabilities of this cross-platform, open-source, and *free* referencing tool. However, one limitation I've encountered is that it does not have very many citiation styles preinstalled, and although many additional formats are available to download through the Mendeley interface, it does not (yet) provide a built-in style editor to customize citiation styles.

Fortunately, Mendeley uses [Citation Style Language v1.0](http://citationstyles.org/) (CSL) which is also used by [Zotero](http://www.zotero.org/) and other CMSs, so not only is it possible to find thousands more citiation styles (e.g., using the [Zotero Style Repository](http://www.zotero.org/styles)), but it's also easy to create custom CSL files!

[This tutorial on the Mendeley blog](http://www.mendeley.com/blog/research-tutorials/howto-edit-citation-styles-for-use-in-mendeley/) shows you the basics, although note that for Windows 7, the custom style directory is actually located at

```{bash}
C:\Users\<USERNAME>\AppData\Local\Mendeley Ltd\Mendeley Desktop\citationStyles-1.0
```

Using the Vancouver style as a template, I easily created a custom citation style for the Open Forest Science Journal, which required modifying a copy of the *vancouver.csl* file:

To get the numbered citations in text to be displayed using square brackets "[]" rather than round brackets "()", I changed line 120 from:

```
<layout prefix="(" suffix=")" delimiter=",">
```

to

```
<layout prefix="[" suffix="]" delimiter=",">
```

Also, to get the square brackets to show up around the numbers in the bibliography I changed line 126 from:

```
<text variable="citation-number" suffix=". "/>
```

to

```
<text variable="citation-number" prefix="[" suffix="] "/>
```

That's it! Pretty simple stuff. You can download the modified file here: [open-forest-science-journal](/uploads/2011/11/open-forest-science-journal.csl).
