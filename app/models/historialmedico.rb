# == Schema Information
#
# Table name: HistorialMedico
#
#  hid   :integer          default(0), not null, primary key
#  pid   :integer
#  fecha :date             not null
#

class Historialmedico < ActiveRecord::Base
  self.table_name = "HistorialMedico"
  has_many :padecimientos, :class_name => "Padecimiento",
    :foreign_key => "pid"
  accepts_nested_attributes_for :padecimientos, allow_destroy: true
end
