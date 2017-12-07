class AktivitasController < ApplicationController
  before_action :authorize
  
  def index
    @aktivitas = PublicActivity::Activity.order("created_at desc")
  end
end
