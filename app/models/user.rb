class User < ApplicationRecord
  has_many :directors, dependent: :destroy

  before_save { self.email = email.downcase if email.present? }

  validates :name, length: { minimum: 1, maximum: 100 }, presence: true

  validates :password, presence: true, length: { minimum: 3 }, if: -> { password_digest.nil? }
  validates :password, length: { minimum: 3 }, allow_blank: true
  
  validates :email,
            presence: true,
            uniqueness: { case_sensitive: true },
            length: { minimum: 3, maximum: 254 }

  has_secure_password
end
