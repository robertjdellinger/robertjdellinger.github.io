---
title: "About"
type: landing

design:
  spacing: '5rem'

# Note: `username` refers to the user's folder name in `content/authors/`

# Page sections
sections:
  - block: resume-biography-3
    content:
      # Choose a user profile to display (a folder name within `content/authors/`)
      username: admin
      text: ''
      # Show a call-to-action button under your biography? (optional)
      button:
        text: Download CV
        url: uploads/resume.pdf
    design:
      # Apply a gradient background
      css_class: hbx-bg-gradient
      # Avatar customization
      avatar:
        src: "assets/media/avatar/avatar.png"
        alt: "Portrait of Robert J. Dellinger"
        size: medium # Options: small (150px), medium (200px, default), large (320px), xl (400px), xxl (500px)
        shape: circle # Options: circle (default), square, rounded

interests:
  - Large Language Models
  - Computer Vision
  - Reinforcement Learning
  - AI Ethics
  
image: "assets/media/coral-reef.png"
sections:
  - block: resume-biography-3
    content:
      title: "Robert J. Dellinger"
      username: "admin"
      text: "Robert J. Dellinger (he/they) is an oceanic and atmospheric scientist whose work spans marine and terrestrial systems, with an interest in investigating how ecosystems patterns, processes, and and outcomes are shaped by both physical (e.g. changes in temperature) and social (e.g. policy decisions) drivers of environmental change. As a Ph.D student in Atmospheric and Oceanic Sciences at UCLA, Robert's research integrates biogeochemical proxies and ancient DNA to reconstruct long term environmental change and quantify shifts in community composition through time. Drawing on ecology and biogeochemistry through a critical theory lens, his research aims are to investigate how social systems and power shape ecosystem processes and, in turn, how changing environments will impact society. Robert previously attained an M.S. in Biology, a B.A. in International Relations, and a B.S. in Marine and Coastal Science, with training that emphasizes interdisciplinary methods and policy-informed research. He is currently a National Science Foundation Graduate Research Fellow, a UCLA Center for Diverse Leadership Fellow, and a NSF Science-Policy National Research Trainee. Additionally, Robert is committed to expanding access to academia for historically excluded communities and believes the pursuit of knowledge should be accessible to anyone guided by curiosity and wonder. As a researcher and educator, he is guided by an ethic of stewardship that insists we leave environments, academic and natural alike, better than we found them."
      button:
        text: "Download CV"
        url: "static/uploads/CV.pdf"
    design:
      # Apply a gradient background
      css_class: hbx-bg-gradient
      # Avatar customization
      avatar:
        src: "assets/media/avatar/avatar.png"
        alt: "Portrait of Robert J. Dellinger"
        size: medium # Options: small (150px), medium (200px, default), large (320px), xl (400px), xxl (500px)
        shape: circle # Options: circle (default), square, rounded
      headings:
        interests: ''
      education:
        - area: PhD Atmospheric and Oceanic Science 
          institution: University of California, Los Angeles (UCLA)
          icon: ""
          date_start: 2024-09-01
          date_end: ""
          summary: |
            Research Focus: Coral Biomineralization And Symbiont Community Dynamics Under Climate Variability And Coastal Land‑use Change, Integrating Multi‑proxy Geochemistry With Ancient DNA (aDNA). Advised by Dr. Aradhna Tripati. 
        - area: MS Biological Science
          institution: California State University, Northridge (CSUN)
          icon: ""
          date_start: 2021-09-01
          date_end: 2024-08-01
          summary: | Research focus: Quantitative marine ecology and biogeochemistry, examining the physiological and energetic responses of marine species to the combined impacts of ocean acidification and warming. Thesis on _Facing Physiological Constraints: The Interactive Effects of Ocean Acidification and Warming_. Advised by Dr. Nyssa Silbiger. 
          button:
            text: 'Thesis PDF'
            url: 'https://scholarworks.calstate.edu/concern/theses/jq085t882'
        - area: BS Marine and Coastal Science & BA International Relations
          institution: University of California, Davis (UC Davis)
          icon: ""
          date_start: 2017-09-01
          date_end: 2021-06-31
          summary: |
            UC Davis Department of Earth and Planetary Sciences Citation for Outstanding Achievement And Contributions (2021)
  - block: resume-experience
    content:
      title: "Research & Professional Experience"
      items:
        - title: "Graduate Research Assistant"
          company: "Critical Ecology Lab"
          location: "Hubbard Brook Experimental Forest"
          date_start: "2024-05-01"
          date_end: "2025-01-31"
          description: |
            * Conducted interdisciplinary research at the Hubbard Brook Experimental Forest (HBEF), examining links between industrial economic activity and ecological disturbances, particularly acid rain‑induced changes in forest ecosystems.
            * Applied a critical ecology framework to examine how structural racism and classism (residential segregation, racial wealth gap, etc.) drive air pollution disparities and impact biogeochemical cycles.
            * Synthesized and managed large‑scale ecological and social datasets in R, integrating atmospheric chemistry, economics, and historical policy impacts into a broader Long‑Term Ecological Research (LTER) framework.
        - title: "Graduate Student Researcher"
          company: "Quantitative Marine Ecology Lab"
          location: "California State University, Northridge"
          date_start: "2021-09-01"
          date_end: "2024-09-01"
          description: |
            * Designed and executed controlled mesocosm experiments to investigate the interactive effects of ocean acidification and warming on intertidal species to assess energetic expenditure under future climate scenarios.
            * Collaborated on field and laboratory-based research projects examining ecological and physiological responses of marine organisms to changing environments, within the context of natural variability; applied various physiological and biogeochemistry protocols to support research objectives.
            * Applied advanced statistical methods in R, including nonlinear regression, two way ANOVA, and thermal performance curve modeling, to quantify temperature dependent metabolic responses.
        - title: "Research Intern"
          company: "NOAA Fisheries, U.S. Department of Commerce"
          location: "Sandy Hook, NJ"
          date_start: "2021-06-01"
          date_end: "2021-09-31"
          description: |
            * Utilized ecotoxicological methodologies to assess the impact of industrial contaminants on White Perch (Morone americana), a key fish species in an urban coastal New Jersey estuary ecosystem.
            * Contributed to a Natural Resource Damage Assessment (NRDA) by analyzing fish tissue pathology and pollutant impacts, supporting NOAA’s efforts to quantify ecosystem injury and inform restoration strategies.
        - title: "Research Trainee"
          company: "National Science Foundation"
          location: "University of California Davis"
          date_start: "2022-06-01"
          date_end: "2023-06-01"
          description: "*Evaluated complex marine policy issues through multifaceted social and environmental lenses in interdisciplinary graduate courses and discussions with ocean scientists, indigenous tribal leaders, and policymakers."
        - title: "Teaching Associate & Graduate Assistant"
          company: "Department of Biology"
          location: "California State University, Northridge"
          date_start: "2021-08-01"
          date_end: "2022-06-30"
          description: "*Instructed introductory biology courses and labs, which included curriculum development, leading discussions, and evaluating student assignments to enhance comprehension of fundamental biology and ecology concepts."
        - title: "Senior Environmental Technician"
          company: "Eco-Alpha Environmental & Engineering Services"
          location: "Sacramento, CA"
          date_start: "2020-06-01"
          date_end: "2021-08-31"
          description: "* Managed procedural development, equipment procurement, and technician training for federal and state water quality compliance monitoring programs (CA State Water Board)."
    design:
      columns: "1"
  - block: resume-experience
    content:
      title: "Leadership & Service Positions"
      items:
        - title: "President, Radical Imagination Coalition"
          company: "UCLA Climate Justice Collective"
          location: "Los Angeles, CA"
          date_start: "2024-09-01"
          date_end: ""
          description: "Campus wide initiative inviting postdocs, graduate students, and staff to craft bold, creative climate futures centering Black, Brown, Queer, Trans, feminist, disabled, and internationalist perspectives and inspired by Robin D. G. Kelley’s articulation of the Black radical imagination. Through quarterly prompts, creative practice, and collaborative feedback sessions, members explore imaginative approaches to AI, energy transitions, and nature based solutions across writing, visual art, music, and film."
        - title: "Co-Founder, Climate Futures Studio"
          company: "UCLA Center for Diverse Leadership in Science"
          location: "Worldwide"
          date_start: "2023-09-01"
          date_end: ""
          description: "Co-founded the Climate Futures Studio, a youth-led science-art initiative that centers disabled, queer, trans, Indigenous, Black, Brown, and other historically excluded people to strengthen narrative power in the climate justice movement by shaping our collective imagination toward optimistic climate futures. Our flagship program, Climate Storytelling 2075, is a six-month fellowship program that supports emerging artists, scientists, and storytellers to envision and design climate futures through the lens of their lived experiences, paired with training in science communication, mentorship, peer learning, and public outreach."
        - title: "Board of Directors"
          company: "Queer Sol Collective"
          location: "Kumeyaay Territory, San Diego, CA"
          date_start: "2023-06-01"
          date_end: ""
          description: " Queer and Indigenous-led initiative (2SLGBTQIA+) designed to strengthen community healing and connection to the land for QTBIPOC communities."
          - title: "President"
          company: "Marine Biology Graduate Student Association"
          location: "CSUN"
          date_start: "2022-09-01"
          date_end: "2023-06-30"
          description: "Led readings on marine ecology, organized professional development workshops and outreach events, and created events to foster  community in the marine biology graduate program."
        - title: "Volunteer"
          company: "Volunteer, Noname Book Club"
          location: "Radical Hood Library, Los Angeles, CA"
          date_start: "2021-06-01"
          date_end: ""
          description: "Committed to distributing knowledge and promoting awareness on critical topics, including race, gender, sexuality, class, disability, and environmental issues, both within and beyond prison walls."
        - title: "Member, Anti-Racism Committee"
          company: "Department of Earth and Planetary Sciences"
          location: "UC Davis"
          date_start: "2020-06-01"
          date_end: "2021-06-30"
          description: "Proposed actions to curtail institutional racism that arises out of department structures, curriculum, and culture. Worked with students, staff, postdoctoral scholars, and faculty to make substantial changes to the department."
        - title: "Commissioner, Gender and Sexuality Commission"
          company: "Associated Students of the University of California, Davis"
          location: "UC Davis"
          date_start: "2019-09-01"
          date_end: "2021-06-30"
          description: "Proposed actions to curtail institutional racism that arises out of department structures, curriculum, and culture. Worked with students, staff, postdoctoral scholars, and faculty to make substantial changes to the department."
        - title: "Commissioner, Ethnic and Cultural Affairs Commission"
          company: "Associated Students of the University of California, Davis"
          location: "UC Davis"
          date_start: "2017-09-01"
          date_end: "2019-06-30"
          description: "Reviewed and formulated recommendations for gender, sexuality, and sexual assault programs. Made legislative decisions on issues including domestic violence, gender equality, and queer/trans concerns."
    design:
      columns: "1"

  - block: resume-awards
    content:
      title: Awards & Distinctions
      username: admin

  - block: resume-awards
    content:
      title: "Awards & Distinctions"
      items:
        - title: "UCLA Eugene V. Cota-Robles Fellowship"
          date: "2024 to 2029"
          awarder: "UCLA"
          summary: "Multi-year doctoral fellowship supporting research, mentorship, and leadership"
        - title: "NSF Graduate Research Fellowship"
          date: "2022 to 2026"
          awarder: "National Science Foundation"
          summary: "Prestigious national fellowship recognizing early career potential"
        - title: "UCLA Center for Diverse Leadership in Science Fellowship"
          date: "2021 to 2026"
          awarder: "UCLA"
          summary: "Support for diverse leaders engaged in scholarship and community building"
        - title: "Department Citation for Outstanding Achievement and Contributions"
          date: "2021"
          awarder: "UC Davis EPS"
          summary: ""
        - title: "GeMS Scholarship"
          date: "2021"
          awarder: "UC Davis EPS"
          summary: ""
        - title: "Bodega Marine Laboratory Ambassador Award"
          date: "2019"
          awarder: "UC Davis CMSI"
          summary: ""
    design:
      columns: "1"

  - block: resume-skills
    content:
      title: "Skills"
      username: "admin"
    design:
      columns: "1"

  - block: resume-languages
    content:
      title: "Languages"
      username: "admin"
    design:
      columns: "1"
---
