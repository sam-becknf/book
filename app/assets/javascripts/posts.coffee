# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


CompareVersions = ->
  array = []
  checkboxes = document.querySelectorAll('input[type=checkbox]:checked')
  i = 0
  while i < checkboxes.length
    array.push checkboxes[i].value
    i++
  return