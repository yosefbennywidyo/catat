class Pengguna < ApplicationRecord
  has_and_belongs_to_many :status_kepegawaian
end
