App.komentar = App.cable.subscriptions.create "KomentarChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
    $("h4").append(data["isi"])
  
  create: (isi) ->
    # calling perform to dispatch the create function
    # on KomentarChannel with hash { isi: isi }
    @perform 'create', isi: isi
