App.percakapan = App.cable.subscriptions.create "PercakapanChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel

  interaksi: ->
    @perform 'interaksi'
