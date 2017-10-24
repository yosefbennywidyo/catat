class SuratMasuk < ApplicationRecord
  validates :status, presence: true, length: { minimum: 4 }
  validates :sifat, presence: true, length: { minimum: 5 }
  validates :derajat_pengaman, presence: true, length: { minimum: 5 }
  validates :dari, presence: true, length: { minimum: 5 }
  validates :perihal, presence: true, length: { minimum: 5 }
end
