# == Schema Information
#
# Table name: pacientes
#
#  pid             :integer          default(0), not null, primary key
#  nombre          :string(150)      not null
#  apellido        :string(150)      not null
#  telefono        :string(10)       not null
#  tipo_sangre     :string(3)        not null
#  sexo            :string(1)        not null
#  religion        :string(100)      not null
#  edo_civil       :string(15)       not null
#  fechaNacimiento :date             not null
#  direccion       :string(255)      not null
#  email           :string(255)      not null
#  doc_id          :integer          not null
#

class Paciente < ActiveRecord::Base
end
