$ ->
  $('.user-ban-link').on 'ajax:success', (xhr, data, status)->
    $(@).toggleClass('icon-undo icon-ban-circle')
    title = $(@).data('powertip')
    $(@).data('powertip', $(@).data('alt'))
    $(@).data('alt', title)
