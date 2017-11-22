class Pengguna < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :trackable
  validates :nama, presence: true, length: { minimum: 6, message: "harus terdiri dari minimal 6 karakter - contoh: Rifaid" }
  
  validates :password, length: { minimum: 6, message: "harus terdiri dari minimal 6 karakter" }
  
  has_and_belongs_to_many :status_kepegawaian
  has_and_belongs_to_many :jabatan
  has_and_belongs_to_many :seksi
  has_and_belongs_to_many :status_akun
  has_and_belongs_to_many :surat_keluar
  
  has_many :komentar
  
  def email_required?
    false
  end

  def email_changed?
    false
  end
end
