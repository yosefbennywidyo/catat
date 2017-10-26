Rails.application.routes.draw do
  resources :jabatan
  resources :status_kepegawaian
  resources :pengguna
  resources :daftar_pustaka
  resources :surat_keluar
  resources :surat_masuk
  get 'dasbor/index'

  get 'salam/index'
  
  root 'salam#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
