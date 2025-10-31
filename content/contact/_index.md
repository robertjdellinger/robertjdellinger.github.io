---
title: "Contact"
type: landing
summary: "Contact Robert J. Dellinger - PhD student in Atmospheric & Oceanic Sciences at UCLA."
sections:
  - block: resume-biography
    content:
      username: "admin"
      text: |
        **Email:** rjdellinger@ucla.edu
        
        **GitHub:** https://github.com/robertjdellinger
        
        **LinkedIn:** https://www.linkedin.com/in/robertjdellinger/
        
        **ORCID:** https://orcid.org/0009-0009-3524-4041
  - block: markdown
    content:
      title: "Send a message"
      text: |
        <form name="contact" method="POST" data-netlify="true" data-netlify-honeypot="bot-field">
          <input type="hidden" name="form-name" value="contact">
          <p style="display:none;">
            <label>Don’t fill this out if you're human: <input name="bot-field"></label>
          </p>
          <p><label>Name <input type="text" name="name" required></label></p>
          <p><label>Email <input type="email" name="email" required></label></p>
          <p><label>Message <textarea name="message" required></textarea></label></p>
          <p><button type="submit">Send</button></p>
        </form>
---
