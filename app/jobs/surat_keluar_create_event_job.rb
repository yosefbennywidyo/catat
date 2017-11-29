class SuratKeluarCreateEventJob < ApplicationJob
  queue_as :default

  def perform(surat_keluar)
    # broadcast to status_channel with the description
    # of the newly surat_keluar item
    ActionCable.server.broadcast('status_channel', {
      judul: 'judul',
      keterangan: 'keterangan'
    })
  end
end
