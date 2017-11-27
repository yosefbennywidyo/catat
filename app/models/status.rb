class Status < ApplicationRecord
  has_and_belongs_to_many :surat_keluar
end
