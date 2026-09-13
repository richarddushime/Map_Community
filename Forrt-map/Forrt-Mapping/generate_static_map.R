library(htmlwidgets)

source("map_builder.R")

# This page is the recommended iframe embed (no Shiny server cold starts), so always guard scrolling
base_map <- build_forrt_map(load_coords(), scroll_guard = TRUE)

saveWidget(
  base_map,
  file = "index.html",
  selfcontained = TRUE,
  title = "FORRT Community Map"
)

# GitHub Pages serves the repo root, and a root index.html takes precedence over README.md.
# Built here and moved, because saveWidget() leaves a *_files/ folder behind when writing to another directory.
file.rename("index.html", "../../index.html")
