class HistorialmedicosController < ApplicationController
  before_filter :has_to_authenticate
  before_filter :just_doctor
  def new
    @historialmedico = Historialmedico.new
    @paciente = Paciente.find_by_sql("SELECT * FROM pacientes WHERE pid = '#{params[:paciente_id]}';")
  end
  def create
    @paciente = Paciente.find_by_sql("SELECT * FROM pacientes WHERE pid = '#{params[:paciente_id]}';")
    @historialmedico = Historialmedico.new(historial_params)
    begin
      id= ActiveRecord::Base.connection.execute("SELECT COUNT(*) FROM historialmedico;")
      id.each do |row|
        id = row
      end
      id = id[0].to_i

      pid= ActiveRecord::Base.connection.execute("SELECT COUNT(*) FROM padecimientos;")
      pid.each do |row|
        pid = row
      end
      pid = pid[0].to_i

      raw_sql = "INSERT INTO historialmedico (hid, pid, fecha)
                 VALUES ('#{id}', '#{params[:paciente_id]}', '#{@historialmedico.fecha}');"

      ActiveRecord::Base.connection.execute raw_sql

      raw_sql = "INSERT INTO padecimientos (eid, hid, nombre, descripcion)
                 VALUES ('#{pid}', '#{id}', '#{params[:historialmedico][:padecimiento][:nombre]}', '#{params[:historialmedico][:padecimiento][:descripcion]}');"

      ActiveRecord::Base.connection.execute raw_sql


      redirect_to paciente_url(@paciente), notice: "¡Se ha agregado un padecimiento!"
    rescue
      flash[:notice] = "Algo en la forma esta incorrecto, favor de verificar el formato"
      render :new
    end
  end

  private

  def historial_params
    params.require(:historialmedico).permit(:fecha, :padecimientos_attributes)
  end
end
