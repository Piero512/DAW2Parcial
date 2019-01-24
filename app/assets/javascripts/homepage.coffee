# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

antes_loading = ->
  $('.carousel-item').first().addClass('active')


$(document).on 'turbolinks:load', antes_loading


