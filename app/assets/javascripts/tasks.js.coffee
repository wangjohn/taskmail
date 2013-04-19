# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#
$ ->
    $('.finish_button').bind('ajax:success', (e, data, status, xhr) ->
        $(this).closest('.task').fadeOut(300)
    )
