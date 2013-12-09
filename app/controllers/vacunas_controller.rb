class VacunasController < ApplicationController
  before_filter :has_to_authenticate
  before_filter :just_doctor

  def new
    @vacuna = Vacuna.new
    all_vacunas = Vacuna.find_by_sql("SELECT nombre, vid FROM Vacunas WHERE vid NOT IN (
	                                      SELECT v.vid FROM Pacientes p, Vacunas v, VacunasDePacientes vp
	                                      WHERE vp.pid='#{params[:paciente_id]}' AND v.vid=vp.vid)")
    @all_vacunas = []
    all_vacunas.each do |vacuna|
      @all_vacunas << [vacuna.nombre, vacuna.vid]
    end
  end
  def create
    @vacuna = Vacuna.new(vacunas_params)
    all_vacunas = Vacuna.find_by_sql("SELECT nombre, vid FROM Vacunas WHERE vid NOT IN (
	                                      SELECT v.vid FROM Pacientes p, Vacunas v, VacunasDePacientes vp
	                                      WHERE vp.pid='#{params[:paciente_id]}' AND v.vid=vp.vid)")
    @all_vacunas = []
    all_vacunas.each do |vacuna|
      @all_vacunas << [vacuna.nombre, vacuna.vid]
    end
    @paciente = Paciente.find_by_sql("SELECT * FROM pacientes WHERE pid = '#{params[:paciente_id]}';")
    begin
      raw_sql = "INSERT INTO vacunasdepacientes (pid, vid) 
                 VALUES ('#{params[:paciente_id]}', '#{@vacuna.vid}');"

      ActiveRecord::Base.connection.execute raw_sql

      redirect_to paciente_path(@paciente), notice: "¡Tu vacuna ha sido agregada!"
    rescue
      flash[:notice] = "Algo en la forma esta incorrecto, favor de verificar el formato"
      render :new
    end
  end
  private
  def vacunas_params
    params.require(:vacuna).permit(:vid)
  end
end
