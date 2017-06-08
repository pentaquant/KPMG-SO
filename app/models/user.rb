require 'bcyrpt'
class User < ActiveRecord::Base
  has_many :questions
  
  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end

  def authenticate(password) #Hunter used if statement in breakout, could implement
    self.password == password
  end
end
