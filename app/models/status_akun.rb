class StatusAkun < ApplicationRecord
  has_and_belongs_to_many :pengguna
end
