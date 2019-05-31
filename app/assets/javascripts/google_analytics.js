/*global gtag*/

document.addEventListener('turbolinks:load', function(event) {
  if (typeof gtag === 'function') {
    gtag('config', 'UA-141202721-1', {
      'page_location': event.data.url
    })
  }
})