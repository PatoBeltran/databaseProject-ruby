# == Schema Information
#
# Table name: vacunas
#
#  vid         :integer          default(0), not null, primary key
#  nombre      :string(255)      not null
#  edadAplic   :integer          not null
#  description :string(255)      not null
#

class Vacuna < ActiveRecord::Base
end
