$(document).ready ->

  # When a game has been added to the user's tracked games, append to the list of games
  $(document).on 'ajax:success', "form[data-behavior~='user_add_game']", (evt, data, status, xhr) ->
    game = data

    el = $('<div/>', {class: 'game',  html: game.name})
    $('.tracking').append(el)

  # # Otherwise, raise an error
  # $(document).on 'ajax:error', "form[data-behavior~='user_add_game']", (evt, data, status, error  ) ->
  #   alert("Error adding game")

