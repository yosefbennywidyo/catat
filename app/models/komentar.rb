class Komentar < ApplicationRecord
  belongs_to :commentable, polymorphic: true
  has_many :komentar, as: :commentable
end
