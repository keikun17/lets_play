App.contact = App.cable.subscriptions.create "ContactChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel

  update_games: ->
    @perform 'update_games'

  update_status: ->
    @perform 'update_status'
