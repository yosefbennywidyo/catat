class ApplicationController < ActionController::Base
  before_action :authenticate_pengguna!
  protect_from_forgery with: :exception
end