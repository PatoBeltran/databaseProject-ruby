# == Schema Information
#
# Table name: Padecimientos
#
#  eid         :integer          default(0), not null, primary key
#  hid         :integer
#  nombre      :string(255)      not null
#  descripcion :string(150)      default("Descripción del padecimiento"), not null
#

class Padecimiento < ActiveRecord::Base
   self.table_name = "Padecimientos"
end
