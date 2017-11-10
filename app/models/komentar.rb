class Komentar < ApplicationRecord
  belongs_to :commentable, polymorphic: true
  has_many :komentar, as: :commentable
  validates :isi, presence: true, length: { minimum: 2, message: "harus terdiri dari minimal 2 karakter - contoh: Ok" }

end
