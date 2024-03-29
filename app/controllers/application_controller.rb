class ApplicationController < ActionController::Base
  include PublicActivity::StoreController
  
  protect_from_forgery with: :exception
  
  def current_user
    @current_user ||= Pengguna.find(session[:pengguna_id]) if session[:pengguna_id]
  end
  helper_method :current_user

  private

  def authorize
    redirect_to login_url, alert: "Anda tidak memiliki hak akses halaman ini!" if current_user.nil?
  end
end
