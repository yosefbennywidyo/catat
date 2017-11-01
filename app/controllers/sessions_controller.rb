class SessionsController < ApplicationController
  def new
  end
  
  def create
    pengguna = Pengguna.find_by_nama(params[:nama])
    if pengguna && pengguna.authenticate(params[:password])
      session[:pengguna_id] = pengguna.id
      redirect_to dasbor_index_path, notice: "Anda telah berhasil masuk Catel!"
    else
      flash.now.alert = "Nama atau password tidak valid"
      render "new"
    end
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Anda berhasil keluar, terima kasih telah mengggunakan Catel!"
  end
end
