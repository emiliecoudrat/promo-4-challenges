class User < ActiveRecord::Base
  has_many :posts

  # TODO: Add some validation
  validates_presence_of :username
  validates_uniqueness_of :username
  validates_presence_of :email, format: { with: /\s*\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*\s*/}
end