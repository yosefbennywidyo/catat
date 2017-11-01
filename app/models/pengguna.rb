class Pengguna < ApplicationRecord
  validates :nama, presence: true, length: { minimum: 6, message: "harus terdiri dari minimal 6 karakter - contoh: Rifaid" }
  
  validates :password, length: { minimum: 6, message: "harus terdiri dari minimal 6 karakter" }
  
  has_and_belongs_to_many :status_kepegawaian
  has_and_belongs_to_many :jabatan
  has_and_belongs_to_many :seksi
  
  has_secure_password
  
  attr_accessible :nama, :password, :password_confirmation
  
  validates_uniqueness_of :nama
end
