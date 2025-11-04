/**
 * Lightweight scroll animations using Animate.css and IntersectionObserver
 * Elements with class 'js-animate' will be animated on scroll
 * Animation class is specified via 'anim-*' classes (e.g., 'anim-fadeInUp')
 */
(function() {
  'use strict';
  
  // Wait for DOM to be ready
  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', initScrollAnimations);
  } else {
    initScrollAnimations();
  }
  
  function initScrollAnimations() {
    // Find all elements that should be animated
    const animatedElements = document.querySelectorAll('.js-animate');
    
    if (!animatedElements.length) {
      return; // No elements to animate
    }
    
    // IntersectionObserver options
    const observerOptions = {
      root: null, // viewport
      rootMargin: '0px 0px -100px 0px', // trigger slightly before element enters viewport
      threshold: 0.1 // trigger when 10% of element is visible
    };
    
    // Callback function for IntersectionObserver
    const observerCallback = function(entries, observer) {
      entries.forEach(function(entry) {
        if (entry.isIntersecting) {
          const element = entry.target;
          
          // Get animation class (e.g., 'anim-fadeInUp' -> 'animate__fadeInUp')
          const animClass = getAnimationClass(element);
          
          if (animClass) {
            // Add Animate.css classes
            element.classList.add('animate__animated', animClass);
            
            // Stop observing this element after animation
            observer.unobserve(element);
          }
        }
      });
    };
    
    // Create the observer
    const observer = new IntersectionObserver(observerCallback, observerOptions);
    
    // Observe all animated elements
    animatedElements.forEach(function(element) {
      // Hide element initially to prevent flash
      element.style.opacity = '0';
      
      // When animation starts, fade in
      element.addEventListener('animationstart', function() {
        element.style.opacity = '1';
      }, { once: true });
      
      observer.observe(element);
    });
  }
  
  /**
   * Extract animation class from element classes
   * Converts 'anim-fadeInUp' to 'animate__fadeInUp'
   */
  function getAnimationClass(element) {
    const classes = element.classList;
    
    for (let i = 0; i < classes.length; i++) {
      const className = classes[i];
      if (className.startsWith('anim-')) {
        // Convert 'anim-fadeInUp' to 'animate__fadeInUp'
        return 'animate__' + className.substring(5);
      }
    }
    
    return null;
  }
})();
