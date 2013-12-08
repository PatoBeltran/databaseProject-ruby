# == Schema Information
#
# Table name: users
#
#  u_id            :integer          default(0), not null, primary key
#  name            :string(30)       not null
#  mail            :string(30)       not null
#  password_digest :string(30)       not null
#

class User < ActiveRecord::Base
end
