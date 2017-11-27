class StatusController < ApplicationController
  def index
  end
  
  private
  def status_params
    params.require(:status).permit(:status_type, surat_keluar_ids:[])
  end
end
