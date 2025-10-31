---
title: "Blog"
type: landing
summary: "Dispatches across research, fieldwork, and public engagement."
sections:
  - block: markdown
    content:
      title: "Notes from the field and beyond"
      text: "Short reflections on methods, data stories, and science communication."
  - block: collection
    content:
      filters:
        folders: ["blog"]
      sort_by: "Date"
      order: "desc"
      count: 10
    design:
      view: "card"
      columns: "2"
  - block: collection
    content:
      title: "Recent Posts"
      subtitle: "Latest updates from our blog"
      text: "Stay up to date with our latest news and insights"
      filters:
        folders: ["post"]
      count: 3
    design:
      view: "card"
      columns: "3"
---
