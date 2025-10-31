---
title: "Contact"
type: landing
summary: "Get in touch about research, collaborations, and outreach."
sections:
  - block: resume-biography
    content:
      username: "admin"
      text: "I welcome inquiries about research collaborations, mentoring, public engagement, and speaking."
      button:
        text: "Email Robert"
        url: "mailto:rjdellinger@ucla.edu"
  - block: markdown
    content:
      title: "Send a message"
      text: |
        <form name="contact" method="POST" data-netlify="true" data-netlify-honeypot="bot-field">
          <input type="hidden" name="form-name" value="contact">
          <p style="display:none;">
            <label>Don't fill this out if you're human: <input name="bot-field"></label>
          </p>
          <p><label>Your name <input type="text" name="name" required></label></p>
          <p><label>Your email <input type="email" name="email" required></label></p>
          <p><label>Subject <input type="text" name="subject"></label></p>
          <p><label>Message <textarea name="message" required></textarea></label></p>
          <p><button type="submit">Send</button></p>
        </form>
---
