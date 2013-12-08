class Assistant < ActiveRecord::Base
  has_secure_password

  validate :email, uniqueness: true
end
