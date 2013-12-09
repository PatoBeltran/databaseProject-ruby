class PacientesController < ApplicationController
  before_filter :has_to_authenticate
  before_filter :just_doctor, except: [:show, :index]

  def new
    @paciente = Paciente.new
  end

  def create
    @paciente = Paciente.new(paciente_params)
    begin
      id= ActiveRecord::Base.connection.execute("SELECT COUNT(*) FROM pacientes;")
      id.each do |row|
        id = row
      end
      id = id[0].to_i
      raw_sql = "INSERT INTO pacientes (pid, nombre, apellido, telefono, tipo_sangre, sexo, religion,
      edo_civil, fechaNacimiento, direccion, email, doc_id) VALUES ('#{id}', '#{@paciente.nombre}', '#{@paciente.apellido}', '#{@paciente.telefono}',
     '#{@paciente.tipo_sangre}', '#{@paciente.sexo}', '#{@paciente.religion}', '#{@paciente.edo_civil}', '#{@paciente.fechaNacimiento}',
     '#{@paciente.direccion}', '#{@paciente.email}', '#{current_user.u_id}');"

      ActiveRecord::Base.connection.execute raw_sql

      @paciente.assign_attributes(pid: id)

      redirect_to paciente_url(@paciente), notice: "¡Tu paciente ha sido agregado!"
    rescue
      flash[:notice] = "Algo en la forma esta incorrecto, favor de verificar el formato"
      render :new
    end

  end
  def edit
    @paciente = Paciente.find_by_sql("SELECT * FROM pacientes WHERE pid = '#{params[:id]}';")[0]
  end

  def update
    @paciente = Paciente.find_by_sql("SELECT * FROM pacientes WHERE pid = '#{params[:id]}';")[0]
    begin
      paciente_params = params[:paciente]
      raw_sql = "UPDATE pacientes SET nombre='#{paciente_params[:nombre]}', apellido='#{paciente_params[:apellido]}', telefono='#{paciente_params[:telefono]}',
      tipo_sangre='#{paciente_params[:tipo_sangre]}', sexo='#{paciente_params[:sexo]}', religion='#{paciente_params[:religion]}', edo_civil='#{paciente_params[:edo_civil]}',
      fechaNacimiento='#{paciente_params[:fechaNacimiento]}', direccion='#{paciente_params[:direccion]}', email='#{paciente_params[:email]}' WHERE pid = '#{@paciente.pid}';"

      ActiveRecord::Base.connection.execute raw_sql

      redirect_to paciente_url(@paciente), notice: "¡Tu paciente ha sido modificado!"
    rescue
      flash[:notice] = "Algo en la forma esta incorrecto, favor de verificar el formato"
      render :edit
    end
  end

  def show
    @paciente = Paciente.find_by_sql("SELECT * FROM pacientes WHERE pid = '#{params[:id]}';")[0]
    @padecimientos = Padecimiento.find_by_sql("SELECT pad.nombre, pad.descripcion FROM Padecimientos pad, Historialmedico hm WHERE pid='#{params[:id]}' AND pad.hid=hm.hid")
    @tusvacunas = Vacuna.find_by_sql("SELECT DISTINCT v.nombre, v.vid FROM Pacientes p, Vacunas v, VacunasDePacientes vp WHERE vp.pid='#{params[:id]}' AND v.vid=vp.vid")
    @otrasvacunas = Vacuna.find_by_sql("SELECT nombre, vid FROM Vacunas WHERE vid NOT IN ( SELECT v.vid FROM Pacientes p, Vacunas v, VacunasDePacientes vp WHERE vp.pid='#{params[:id]}' AND v.vid=vp.vid)")
    @citaspasadas = Cita.find_by_sql("SELECT cid, fecha, comentario FROM Citas WHERE Citas.pid='#{params[:id]}' AND fecha < CURDATE()")
  end

  def index
    p = "%"
    if params[:search]
      parametros = params[:search].split(" ")
      p = "%" + parametros.join("%")
    end
    p += "%"
    if is_doctor
      @pacientes = Paciente.find_by_sql("SELECT pid, nombre, apellido,  telefono, tipo_sangre, sexo, religion, edo_civil, fechaNacimiento, direccion, email FROM Pacientes WHERE CONCAT(nombre, ' ', apellido) like '#{p}' AND doc_id = '#{current_user.u_id}';")
    else
      @pacientes = Paciente.find_by_sql("SELECT pid, nombre, apellido,  telefono, tipo_sangre, sexo, religion, edo_civil, fechaNacimiento, direccion, email FROM Pacientes WHERE CONCAT(nombre, ' ', apellido) like '#{p}' AND doc_id = '#{current_user.doc_id}';")
    end
  end

  private
  def paciente_params
    params.require(:paciente).permit(:nombre, :apellido, :telefono, :tipo_sangre, :sexo, :religion, :edo_civil, :fechaNacimiento, :direccion, :email)
  end
end
