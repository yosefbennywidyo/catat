class AktivitasController < ApplicationController
  def index
    @aktivitas = PublicActivity::Activity.order("created_at desc")
  end
end