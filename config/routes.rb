Rails.application.routes.draw do
  resources :seksi
  resources :jabatan
  resources :status_kepegawaian
  resources :pengguna
  resources :daftar_pustaka
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
