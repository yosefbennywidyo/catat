class ApplicationController < ActionController::Base
  before_action :authenticate_pengguna!
  protect_from_forgery with: :exception
  
  private

  def current_user
    @current_user ||= Pengguna.find(session[:pengguna_id]) if session[:pengguna_id]
  end
  helper_method :current_user
  
  def authorize
    redirect_to login_url, alert: "Anda tidak memiliki hak akses halaman ini!" if current_user.nil?
  end
end
