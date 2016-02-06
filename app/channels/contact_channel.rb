# Be sure to restart your server when you modify this file. Action Cable runs in an EventMachine loop that does not support auto reloading.
class ContactChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    stream_from "contact_channel_test1"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def update_games(data)
    ActionCable.server.broadcast 'contact_channel_test1', user: data['user'], game: data['game']
  end

  def update_status
  end
end
