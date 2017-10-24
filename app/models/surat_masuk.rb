class SuratMasuk < ApplicationRecord
  validates :nomor_surat, presence: true, format: { with: /([\/\.A-Za-z0-9])/,
    message: "hanya diperkenankan terdiri dari rangkaian huruf dan angka serta karakter / (garis miring) dan . (titik)" }
  validates :status, presence: true, length: { minimum: 4, message: "harus terdiri dari minimal 4 karakter" }
  validates :sifat, presence: true, length: { minimum: 5, message: "harus terdiri dari minimal 5 karakter" }
  validates :derajat_pengaman, presence: true, length: { minimum: 5, message: "harus terdiri dari minimal 5 karakter"  }
  validates :dari, presence: true, length: { minimum: 5, message: "harus terdiri dari minimal 5 karakter"  }
  validates :perihal, presence: true, length: { minimum: 5, message: "harus terdiri dari minimal 5 karakter"  }
end
