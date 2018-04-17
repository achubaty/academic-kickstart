+++
title = "Simulating mountain pine beetle eastward spread"
date = 2018-04-13T20:37:16-06:00
draft = false

# Tags: can be used for filtering projects.
# Example: `tags = ["machine-learning", "deep-learning"]`
tags = ["SpaDES", "MPB"]

# Project summary to display on homepage.
summary = "The continued eastward spread of mountain pine beetle (*Dendroctonus ponderosae* Hopk.; MPB) now threatens the boreal forests of eastern Alberta, Saskatchewan, and beyond. Predicting the outbreak and spread dynamics of this insect in jack pine, and to evaluate control measures to mitigate a potentially devastating loss of forest habitat and timber supply requires not only a complex understanding of the various inputs to this system and their interactions (e.g., MPB population dynamics, climate impacts, landscape features) but also the technical capacity to run large-scale spatial simulation models, and to update them quickly as new data are acquired and new models are developed. ..."

# Optional image to display on homepage.
image_preview = ""

# Optional external URL for project (replaces project detail page).
external_link = ""

# Does the project detail page use math formatting?
math = false

# Does the project detail page use source code highlighting?
highlight = true

# Featured image
# Place your image in the `static/img/` folder and reference its filename below, e.g. `image = "example.jpg"`.
[header]
image = "mpb-spread_model_overview.png"
caption = ""

+++

The continued eastward spread of mountain pine beetle (Dendroctonus ponderosae Hopk.; MPB) now threatens the boreal forests of eastern Alberta, Saskatchewan, and beyond. Predicting the outbreak and spread dynamics of this insect in jack pine, and to evaluate control measures to mitigate a potentially devastating loss of forest habitat and timber supply requires not only a complex understanding of the various inputs to this system and their interactions (e.g., MPB population dynamics, climate impacts, landscape features) but also the technical capacity to run large-scale spatial simulation models, and to update them quickly as new data are acquired and new models are developed.

Nonlinear density-dependent dynamics of mountain pine beetle (MPB) recruitment means that MPB spread to Saskatchewan and beyond is primarily a “numbers game”, and this has sharp consequences for pest management thresholds. The nonlinear dependency of survival rate on temperature means that eruptive potential is regulated secondarily by climate, and this has consequences for the efficacy of pest management through “direct control”. Through simulation we distinguish the conditions under which MPB spread can be significantly slowed. Preliminary results indicate that the prognosis for pest management in the lodgepole pine of the Rocky Mountains Foothills region is distinctly different that of boreal jack pine.

Simulations of MPB population recruitment and spread were developed using the [`SpaDES`](http://spades.predictiveecology.org) (Spatial Discrete Event Simulation) platform. `SpaDES` facilitates a tight coupling of simulation and data within a modular framework that allows easy updates to model components. Furthermore, our development cycle follows current best practices for reproducible computing workflows and, where possible, we have followed an "Open-Access" model for software platform and simulation model development.

