class KomentarChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    stream_from "komentar_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
  
  def create(data)
    # data is like parameters received from front end
    Komentar.create({ isi: data['isi'] })
  end
end
