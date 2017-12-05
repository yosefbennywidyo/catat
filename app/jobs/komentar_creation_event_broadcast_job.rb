class KomentarCreationEventBroadcastJob < ApplicationJob
  queue_as :default

  #def perform(*args)
    # Do something later
  #end
  def perform(komentar)
    # broadcast to komentar_channel with the isi
    # of the newly created komentar
    ActionCable.server.broadcast('komentar_channel', {
      description: render_isi(komentar)
    })
  end

  private

  def render_isi(komentar)
    # In Rails 5, renderer has been made public so that we can use
    # ApplicationController.renderer to render a partial
    ApplicationController.renderer.render(
      partial: 'komentar/komentar', locals: { komentar: komentar })
  end
end
