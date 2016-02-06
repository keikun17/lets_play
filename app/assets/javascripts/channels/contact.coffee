App.contact = App.cable.subscriptions.create "ContactChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    console.log "data received from websocket is: "
    console.log(data)

    alert("Receiving data from websocket!")

    # Called when there's incoming data on the websocket for this channel

  update_games: (user, game) ->
    @perform 'update_games', user: user, game: game

  update_status: ->
    @perform 'update_status'
