---
# Leave title empty to use site title
title: ''
summary: 'Robert J. Dellinger - PhD Student in Atmospheric and Oceanic Sciences at UCLA researching climate change impacts on marine ecosystems and biogeochemistry.'
date: 2025-01-01
type: landing
draft: false

design:
  # Default section spacing
  spacing: '6rem'

sections:
  - block: resume-biography-3
    content:
      # Choose a user profile to display (a folder name within `content/authors/`)
      username: admin
      text: ''
      # Show a call-to-action button under your biography? (optional)
      button:
        text: Download CV
        url: uploads/CV.pdf
      headings:
        about: ''
        education: ''
        interests: ''
    design:
      # Apply a gradient background
      css_class: hbx-bg-gradient
      # Avatar customization
      avatar:
        size: medium # Options: small (150px), medium (200px, default), large (320px), xl (400px), xxl (500px)
        shape: circle # Options: circle (default), square, rounded
  - block: markdown
    content:
      title: 'Research Focus'
      subtitle: ''
      text: |-
        Robert J. Dellinger is a Ph.D. student in Atmospheric and Oceanic Sciences at UCLA, specializing in biogeochemistry, under the mentorship of Dr. Aradhna Tripati. Rob's research explores the interactive effects of ocean acidification and warming on marine organisms by assessing their physiological responses to projected climate change scenarios. By employing mechanistic approaches, they aim to predict how changes at the organismal level could scale up to influence broader ecosystem functions.

    design:
      columns: '1'
  - block: collection
    id: papers
    content:
      title: Featured Publications
      filters:
        folders:
          - publications
        featured_only: true
    design:
      view: article-grid
      columns: 2
  - block: collection
    content:
      title: Recent Publications
      text: ''
      filters:
        folders:
          - publications
        exclude_featured: false
    design:
      view: citation
  - block: collection
    id: talks
    content:
      title: Conferences & Colloquia
      filters:
        folders:
          - events
    design:
      view: card
  - block: collection
    id: news
    content:
      title: Recent News
      subtitle: ''
      text: ''
      # Page type to display. E.g. post, talk, publication...
      page_type: blog
      # Choose how many pages you would like to display (0 = all pages)
      count: 5
      # Filter on criteria
      filters:
        author: ''
        category: ''
        tag: ''
        exclude_featured: false
        exclude_future: false
        exclude_past: false
        publication_type: ''
      # Choose how many pages you would like to offset by
      offset: 0
      # Page order: descending (desc) or ascending (asc) date.
      order: desc
    design:
      # Choose a layout view
      view: card
      # Reduce spacing
      spacing:
        padding: [0, 0, 0, 0]
  - block: resume-experience
    content:
      username: "admin"
      title: "Professional Experience"
    design:
      columns: "1"
      spacing:
        padding: ["6","6","6","6"]

  - block: resume-skills
    content:
      username: "admin"
      title: "Research & Technical Skills"
      text: ""
    design:
      columns: "1"
      spacing:
        padding: ["6","6","6","6"]

  - block: markdown
    content:
      title: "Media & Outreach"
      subtitle: "Writing, Communication, and Public Engagement"
      text: |
        Explore features, interviews, and science communication projects highlighting ocean–climate research and collaborative storytelling.
    design:
      columns: "1"
---
