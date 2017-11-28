class StatusChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    stream_from "surat_keluar"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def update(data)
    SuratKeluar.create({ judul: data['judul'], keterangan: data['keterangan'] })
  end
end
