# == Schema Information
#
# Table name: users
#
#  u_id            :integer          default(0), not null, primary key
#  name            :string(255)      not null
#  mail            :string(255)      not null
#  password_digest :string(255)      not null
#

class User < ActiveRecord::Base
  has_secure_password

  validate :mail, uniqueness: true
end
