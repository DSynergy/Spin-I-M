class User < ActiveRecord::Base
  validates :username, presence: true
  validates :email, presence: true, length: { maximum: 75 }

  VALID_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates_format_of :email, :with => VALID_REGEX

  has_many :playlists, through: :user_playlists
end
