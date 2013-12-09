# == Schema Information
#
# Table name: ArticulosPrescritos
#
#  aid        :integer          default(0), not null, primary key
#  cid        :integer
#  nombre     :string(255)      not null
#  cantidad   :integer          not null
#  frecuencia :string(100)      not null
#

class Articulosprescrito < ActiveRecord::Base
  self.table_name = "ArticulosPrescritos"
end
