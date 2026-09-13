## FORRT Community Map
The FORRT Mapping Project visualizes the global community of the [Framework for Open and Reproducible Research Training](https://forrt.org).

**Live map:** https://forrt.org/map-community/

### Outputs
The map is defined once in `Forrt-map/Forrt-Mapping/map_builder.R` and published two ways:

| Output | Built by | Best for |
| --- | --- | --- |
| Static page: `index.html` at the repo root, served by GitHub Pages ([live](https://forrt.org/map-community/)) | `Rscript generate_static_map.R` | Embedding in other pages |
| Shiny app ([shinyapps.io](https://forrtapps.shinyapps.io/Forrt-Mapping/)) | `app.R` | Standalone page with title and description |

### Embedding the map
**Recommended: the static page.** It needs no server, so it loads instantly.

```html
<iframe
  src="https://forrt.org/map-community/"
  title="FORRT Community Map"
  style="width: 100%; height: 600px; border: 0;"
  loading="lazy">
</iframe>
```

**Alternative: the Shiny app in map-only mode.** Add `?embed=true` to hide the title and description:

```html
<iframe
  src="https://forrtapps.shinyapps.io/Forrt-Mapping/?embed=true"
  title="FORRT Community Map"
  style="width: 100%; height: 600px; border: 0;"
  loading="lazy">
</iframe>
```

In both embeds, scroll-wheel zoom turns on only after a click on the map, so scrolling the host page is not captured by the map.

### The data
The current data is a snapshot from **January 2024**. Member locations are aggregated to city level.

### Running locally and contributing
See [`More details here`](Forrt-map/Forrt-Mapping/Readme.Rmd).
