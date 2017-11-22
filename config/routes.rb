Rails.application.routes.draw do
  devise_for :pengguna
  resources :derajat_pengaman
  resources :sifat_surat_masuk
  resources :status_surat_masuk
  resources :status_akun
  get 'signup', to: 'pengguna#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :sessions
  resources :seksi
  resources :jabatan
  resources :status_kepegawaian
  resources :pengguna
  resources :daftar_pustaka do
    resources :komentar
  end
  resources :surat_masuk
  
  resources :surat_keluar do
    resources :komentar
  end

  resources :komentar do
    resources :komentar
  end
  
  get 'dasbor/index'

  get 'salam/index'
  
  root 'salam#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
