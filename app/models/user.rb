class User < ActiveRecord::Base

  def password=(password)
    self.hashed_password = BCrypt::Password.create(password)
  end

  def password
    BCrypt::Password.new(self.hashed_password)
  end

  def self.authenticate(email, password)
    user = User.find_by(email: email)
     return nil unless user
      user.password == password ? user : nil
  end

end

#remeber to include BCrypt in your gemfile and environment!

# gem 'bcrypt'

# require 'bcrypt'
