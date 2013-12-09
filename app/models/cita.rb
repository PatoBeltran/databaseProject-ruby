# == Schema Information
#
# Table name: Citas
#
#  cid           :integer          default(0), not null, primary key
#  pid           :integer
#  fecha         :date             not null
#  comentario    :string(140)      default("sin atender"), not null
#  edad_actual   :integer          default(0)
#  peso_actual   :integer          default(0)
#  altura_actual :integer          default(0)
#  doc_id        :integer          not null
#

class Cita < ActiveRecord::Base
  self.table_name = "Citas"
end
