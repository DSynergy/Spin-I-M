class User < ActiveRecord::Base
  has_many :playlists, through: :user_playlists

  before_save { self.email = email.downcase }
  has_secure_password

  validates :username, presence: true
  validates :email, presence: true, length: { maximum: 75 },
            uniqueness: { case_sensitive: false }
  VALID_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates_format_of :email, :with => VALID_REGEX

  validates :password, presence: true, length: { minimum: 8 }
end
