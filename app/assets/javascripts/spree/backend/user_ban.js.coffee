$ ->
  $('.user-ban-link').on 'ajax:success', (xhr, data, status)->
    $(@).toggleClass('fa-undo fa-ban')
    title = $(@).data('powertip')
    $(@).data('powertip', $(@).data('alt'))
    $(@).data('action', $(@).data('alt').toLowerCase())
    $(@).data('alt', title)
