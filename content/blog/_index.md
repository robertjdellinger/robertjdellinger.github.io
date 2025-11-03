---
title: "Blog"
type: landing
summary: "Coding blog, reproducible workflows, geospatial processing, oceanographic visualization, and research automation"
sections:
  - block: markdown
    content:
      title: "Coding Blog"
      text: "Posts appear below. Use tags to filter."
  - block: collection
    content:
      filters:
        folders: ["blog"]
        taxonomy: "tags"
        filter_default: ""
      count: 10
      sort_by: "date"
      sort_ascending: false
---
