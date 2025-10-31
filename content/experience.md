---
title: 'Bio & Experience'
summary: 'Overview, education, experience, fellowships, awards, skills, and languages.'
date: 2025-01-01
type: landing
draft: false

design:
  spacing: '5rem'

# Note: `username` refers to the user's folder name in `content/authors/`

# Page sections
sections:
  - block: resume-biography
    content:
      username: admin
  - block: resume-experience
    content:
      title: Education
      username: admin
    design:
      # Hugo date format
      date_format: 'January 2006'
      # Education or Experience section first?
      is_education_first: true
      # Show only education entries
      view: education
  - block: resume-experience
    content:
      title: Research & Professional Experience
      username: admin
    design:
      # Hugo date format
      date_format: 'January 2006'
      # Show only work entries
      view: experience
  - block: markdown
    content:
      title: Fellowships
      text: |
        - **NSF Graduate Research Fellowship**, National Science Foundation (2023–present)
        - **Eugene V. Cota-Robles Fellowship**, UCLA Graduate Division (2024–present)
        - **CDLS Fellowship**, Center for Diverse Leadership in Science, UCLA (2024–present)
        - **NSF Research Trainee**, Sustainable Oceans NRT Program (2022–2023)
  - block: resume-awards
    content:
      title: Awards & Distinctions
      username: admin
  - block: resume-skills
    content:
      title: Skills & Languages
      username: admin
    design:
      show_skill_percentage: false
  - block: resume-languages
    content:
      username: admin
---
