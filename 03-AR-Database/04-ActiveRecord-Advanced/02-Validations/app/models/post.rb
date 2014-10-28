class Post < ActiveRecord::Base
  belongs_to :user

  # TODO: Add some validation
  validates_presence_of :user
  validates_presence_of :name
  validates :name, length: { minimum: 5 }
  validates :name, uniqueness: { case_sensitive: false }
  validates_presence_of :url, format: { with: /\A\.com\z/ }
end