---
---

$(document).ready () ->
  $('.carousel').carousel({ interval: 8000})
$('#carousel-example-generic').on 'slid.bs.carousel', () ->
  console.log("finished to slide")

$('#carousel-example-generic').on 'slide.bs.carousel', () ->
  console.log('start sliding');
