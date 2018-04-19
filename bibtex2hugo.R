tmpDir <- file.path("~/Dropbox/tmp/bibtex2hugo")
setwd(tmpDir)

## Mendeley doesn't create a .bib file for "My Publications"!!
## Need to manually select all my publications (Ctrl-A), right-click, and
## select "Copy As" > "BibTex Entry".
## Paste to a blank text file and save the file as "My_Papers.bib".

file.copy("~/Dropbox/Library/bibliographies/My Presentations.bib",
          file.path(tmpDir, "My_Presentations.bib"))

papers <- read.bib("My_Papers.bib")
talks <- read.bib("My_Presentations.bib")

x <- papers[[1]]
x <- talks[[1]]

# Publication type.
# Legend:
# 0 = Uncategorized
# 1 = Conference paper
# 2 = Journal article
# 3 = Manuscript
# 4 = Report
# 5 = Book
# 6 = Book section
bib2hugo.publications <- function(x) {
  if (!dir.exists("publication")) dir.create("publication")

  hugoFile <- file.path("publication", paste0(gsub(":", "", names(x)), ".md"))

  cat("+++",
      paste0("title = \"", gsub("\\{|\\}", "", x$title), "\""),
      paste0("date = \"", x$year, "01", "01", "\""), ## need to manually adjust month and day
      paste0("draft = false"),
      paste0("authors = [\"", paste(x$author, collapse = "\", \""), "\"]"),
      paste0("publication_types = [2]"),
      paste0("publication = \"", x$journal, "\""),
      paste0("publication_short = \"\""),
      paste0("abstract = \"", x$abstract, "\""),
      paste0("abstract_short = \"\""),
      paste0("image_preview = \"\""),
      paste0("selected = false"),
      paste0("projects = [\"\"]"),
      paste0("tags = [\"\"]"),
      paste0("url_pdf = \"", x$url, "\""),
      paste0("url_preprint = \"\""),
      paste0("url_code = \"\""),
      paste0("url_dataset = \"\""),
      paste0("url_project = \"\""),
      paste0("url_slides = \"\""),
      paste0("url_video = \"\""),
      paste0("url_poster = \"\""),
      paste0("url_source = \"\""),
      paste0("math = false"),
      paste0("highlight = true"),
      "",
      paste0("[header]"),
      paste0("image = \"\""),
      paste0("caption = \"\""),
      "",
      "+++",
      file = hugoFile,
      sep = "\n"
  )

  invisible()
}

purrr::map(papers, bib2hugo.publications)

################################################################################
bib2hugo.presentations <- function(x) {
  if (!dir.exists("talk")) dir.create("talk")

  hugoFile <- file.path("talk", paste0(gsub(":", "", names(x)), ".md"))

  cat("+++",
      paste0("title = \"", gsub("\\{|\\}", "", x$title), "\""),
      paste0("date = \"", x$year, "-01", "-01", "\""), ## need to manually add month and day
      paste0("draft = false"),
      paste0("authors = [\"", paste0(x$author, collapse = "\", \""), "\"]"),
      paste0("#time_start = \"\""),
      paste0("#time_end = \"\""),
      paste0("abstract = \"", x$abstract, "\""),
      paste0("abstract_short = \"\""),
      paste0("event = \"", x$publisher, "\""),
      paste0("event_url = \"\""),
      paste0("location = \"", x$address, "\""),
      paste0("selected = false"),
      paste0("projects = [\"\"]"),
      paste0("tags = [\"\"]"),
      paste0("url_pdf = \"", x$url, "\""),
      paste0("url_slides = \"\""),
      paste0("url_video = \"\""),
      paste0("url_code = \"\""),
      paste0("math = false"),
      paste0("highlight = true"),
      "",
      paste0("[header]"),
      paste0("image = \"\""),
      paste0("caption = \"\""),
      "",
      "+++",
      file = hugoFile,
      sep = "\n"
  )

  invisible()
}

purrr::map(talks, bib2hugo.presentations)
