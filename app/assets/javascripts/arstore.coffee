# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery(document).on 'turbolinks:load', ->
  hide_sidebar = localStorage.getItem("sidebar.minimize")
  localStorage.setItem("sidebar.minimize", "yes") if hide_sidebar is null

  if hide_sidebar is null or hide_sidebar is "yes"
    $('#sidebar').addClass('minimize')
  else
    $('#sidebar').removeClass('minimize')

  $('#sidebar-nav-button').on 'click', () ->
     hide_sidebar = localStorage.getItem("sidebar.minimize")
     if hide_sidebar is null or hide_sidebar is "yes"
        $('#sidebar').removeClass('minimize')
        localStorage.setItem("sidebar.minimize", "no")
     else
        $('#sidebar').addClass('minimize')
        localStorage.setItem("sidebar.minimize", "yes")
