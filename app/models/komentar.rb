class Komentar < ApplicationRecord
  has_attached_file :lampiran
  belongs_to :commentable, polymorphic: true
  has_many :komentar, as: :commentable
  validates :isi, presence: true, length: { minimum: 2, message: "harus terdiri dari minimal 2 karakter - contoh: Ok" }
  validates_attachment :lampiran
  do_not_validate_attachment_file_type :lampiran
  
  include PublicActivity::Common
end
