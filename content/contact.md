---
title: 'Contact'
summary: 'Get in touch with Robert J. Dellinger'
date: 2025-01-01
type: landing
draft: false

design:
  spacing: '6rem'

sections:
  - block: markdown
    content:
      title: 'Get in Touch'
      subtitle: ''
      text: |-
        I'm always happy to discuss research collaborations, science communication opportunities, or answer questions about my work. Feel free to reach out using the form below or via [email](mailto:rjdellinger@ucla.edu).
    design:
      columns: '1'
  
  - block: markdown
    content:
      title: ''
      subtitle: ''
      text: |-
        <form name="contact" method="POST" data-netlify="true" netlify-honeypot="bot-field" class="contact-form">
          <input type="hidden" name="form-name" value="contact" />
          
          <!-- Honeypot field for spam prevention -->
          <p class="hidden" aria-hidden="true">
            <label>
              Don't fill this out if you're human: <input name="bot-field" />
            </label>
          </p>
          
          <div class="form-group">
            <label for="name">Name <span class="required" aria-label="required">*</span></label>
            <input type="text" id="name" name="name" required aria-required="true" class="form-control" placeholder="Your name" />
          </div>
          
          <div class="form-group">
            <label for="email">Email <span class="required" aria-label="required">*</span></label>
            <input type="email" id="email" name="email" required aria-required="true" class="form-control" placeholder="your.email@example.com" />
          </div>
          
          <div class="form-group">
            <label for="subject">Subject <span class="required" aria-label="required">*</span></label>
            <input type="text" id="subject" name="subject" required aria-required="true" class="form-control" placeholder="Brief subject line" />
          </div>
          
          <div class="form-group">
            <label for="message">Message <span class="required" aria-label="required">*</span></label>
            <textarea id="message" name="message" rows="6" required aria-required="true" class="form-control" placeholder="Your message..."></textarea>
          </div>
          
          <div class="form-group">
            <button type="submit" class="btn btn-primary">Send Message</button>
          </div>
        </form>
        
        <style>
          .contact-form {
            max-width: 600px;
            margin: 0 auto;
          }
          
          .contact-form .form-group {
            margin-bottom: 1.5rem;
          }
          
          .contact-form label {
            display: block;
            margin-bottom: 0.5rem;
            font-weight: 500;
            color: var(--text-color);
          }
          
          .contact-form .required {
            color: #dc3545;
          }
          
          .contact-form .form-control {
            width: 100%;
            padding: 0.75rem;
            border: 1px solid #dee2e6;
            border-radius: 0.375rem;
            font-size: 1rem;
            transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
          }
          
          .contact-form .form-control:focus {
            border-color: var(--primary-color, #6366f1);
            outline: 0;
            box-shadow: 0 0 0 0.2rem rgba(99, 102, 241, 0.25);
          }
          
          .contact-form textarea.form-control {
            resize: vertical;
            min-height: 120px;
          }
          
          .contact-form .btn-primary {
            background-color: var(--primary-color, #6366f1);
            border-color: var(--primary-color, #6366f1);
            color: white;
            padding: 0.75rem 2rem;
            font-size: 1rem;
            border-radius: 0.375rem;
            cursor: pointer;
            transition: all 0.15s ease-in-out;
          }
          
          .contact-form .btn-primary:hover {
            background-color: var(--primary-dark, #4f46e5);
            border-color: var(--primary-dark, #4f46e5);
            transform: translateY(-1px);
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
          }
          
          .contact-form .btn-primary:active {
            transform: translateY(0);
          }
          
          .contact-form .hidden {
            display: none;
          }
          
          /* Dark mode support */
          @media (prefers-color-scheme: dark) {
            .contact-form .form-control {
              background-color: #1f2937;
              border-color: #374151;
              color: #f9fafb;
            }
            
            .contact-form .form-control:focus {
              border-color: var(--primary-color, #818cf8);
              box-shadow: 0 0 0 0.2rem rgba(129, 140, 248, 0.25);
            }
          }
          
          /* Responsive design */
          @media (max-width: 768px) {
            .contact-form {
              max-width: 100%;
            }
          }
        </style>
    design:
      columns: '1'
      
  - block: markdown
    content:
      title: 'Connect on Social Media'
      subtitle: ''
      text: |-
        You can also reach me through the following channels:
        
        - **Email**: [rjdellinger@ucla.edu](mailto:rjdellinger@ucla.edu)
        - **Twitter/X**: [@RJ_Dellinger](https://twitter.com/RJ_Dellinger)
        - **LinkedIn**: [Robert J. Dellinger](https://www.linkedin.com/in/robertjdellinger/)
        - **GitHub**: [@robertjdellinger](https://github.com/robertjdellinger)
    design:
      columns: '1'
---
