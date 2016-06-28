class User < ActiveRecord::Base
  EMAIL_REGEX = /\A([a-z0-9][\._\-]?)+@(\w)+(\.([a-z])+)+\z/i

  validates :name, presence: true
  validates :email, presence: true, format: { with: EMAIL_REGEX }

  has_secure_password

  has_many :comments
end
