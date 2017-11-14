class SuratMasuk < ApplicationRecord
  validates :nomor_surat, presence: true, format: { with: /[\/\.A-Za-z0-9]/,
    message: "hanya diperkenankan terdiri dari rangkaian huruf dan angka serta karakter / (garis miring) dan . (titik)" }
  validates :dari, presence: true, length: { minimum: 5, message: "harus terdiri dari minimal 5 karakter"  }
  validates :perihal, presence: true, length: { minimum: 5, message: "harus terdiri dari minimal 5 karakter"  }
  has_and_belongs_to_many :status_surat_masuk
end
