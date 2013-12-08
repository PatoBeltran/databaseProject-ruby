# == Schema Information
#
# Table name: assistants
#
#  aid             :integer          default(0), not null, primary key
#  name            :string(255)      not null
#  mail            :string(255)      not null
#  password_digest :string(255)      not null
#  doc_id          :integer          not null
#

class Assistant < ActiveRecord::Base
  has_secure_password

  validate :email, uniqueness: true
end
