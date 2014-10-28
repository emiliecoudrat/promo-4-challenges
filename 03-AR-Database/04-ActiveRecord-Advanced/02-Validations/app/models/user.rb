class User < ActiveRecord::Base
  has_many :posts
  # TODO: Add some validation
  before_validation :stripspaces
  validates :username, :email, presence: true
  validates_uniqueness_of :username
  validates :email, format: { with: /\A\w+@\w+\.\w{2,3}\z/, message:
 "invalid email" }

  private

  def stripspaces
    self.email = email.lstrip.rstrip unless email.nil?
  end
end