class CitasController < ApplicationController
  before_filter :has_to_authenticate

  def new
    @cita = Cita.new
    if is_doctor
      pacientes = Paciente.find_by_sql("SELECT CONCAT(nombre, ' ', apellido) as name, pid FROM pacientes where doc_id='#{current_user.u_id}';")
    else
      pacientes = Paciente.find_by_sql("SELECT CONCAT(nombre, ' ', apellido) as name, pid FROM pacientes where doc_id='#{current_user.doc_id}';")
    end
    @pacientes = []
    pacientes.each do |paciente|
      @pacientes << [paciente.name, paciente.id]
    end
  end

  def create
    @cita = Cita.new(cita_params)
    if is_doctor
      pacientes = Paciente.find_by_sql("SELECT CONCAT(nombre, ' ', apellido) as name, pid FROM pacientes where doc_id='#{current_user.u_id}';")
    else
      pacientes = Paciente.find_by_sql("SELECT CONCAT(nombre, ' ', apellido) as name, pid FROM pacientes where doc_id='#{current_user.doc_id}';")
    end
    @pacientes = []
    pacientes.each do |paciente|
      @pacientes << [paciente.name, paciente.id]
    end
    begin
      id= ActiveRecord::Base.connection.execute("SELECT COUNT(*) FROM citas;")
      id.each do |row|
        id = row
      end
      id = id[0].to_i
      if is_doctor
        raw_sql = "INSERT INTO citas (cid, pid, fecha, comentario, doc_id) 
                   VALUES ('#{id}', '#{@cita.pid}', '#{@cita.fecha}', '#{@cita.comentario}', '#{current_user.u_id}');"
      else
        raw_sql = "INSERT INTO citas (cid, pid, fecha, comentario, doc_id) 
                   VALUES ('#{id}', '#{@cita.pid}', '#{@cita.fecha}', '#{@cita.comentario}','#{current_user.doc_id}');"
      end

      ActiveRecord::Base.connection.execute raw_sql

      redirect_to citas_url, notice: "¡Tu cita ha sido creada!"
    rescue
      render :new
    end
  end
  def edit
    @cita = Paciente.find_by_sql("SELECT * FROM citas WHERE cid = '#{params[:id]}';")[0]
  end

  def update
    @cita = Paciente.find_by_sql("SELECT * FROM citas WHERE cid = '#{params[:id]}';")[0]
    begin
      cita_params = params[:paciente]
      raw_sql = "UPDATE citas SET edad_actual='#{cita_params[:edad_actual]}', peso_actual='#{cita_params[:peso_actual]}', altura_actual='#{cita_params[:altura_actual]}' WHERE cid = '#{cita_params[:cid]}';"

      ActiveRecord::Base.connection.execute raw_sql

      redirect_to cita_url(@cita), notice: "¡Tu cita ha sido modificada!"
    rescue
      render :edit
    end
  end

  def index
    if is_doctor
      @citas = Cita.find_by_sql("SELECT cid, nombre, apellido, comentario, fecha, telefono FROM Citas c, Pacientes p WHERE c.pid=p.pid AND fecha >= CURDATE() AND c.doc_id = '#{current_user.u_id}' ORDER BY fecha ASC")
    else
      @citas = Cita.find_by_sql("SELECT cid, nombre, apellido, comentario, fecha, telefono FROM Citas c, Pacientes p WHERE c.pid=p.pid AND fecha >= CURDATE() AND c.doc_id = '#{current_user.doc_id}' ORDER BY fecha ASC")
    end
  end

  def show
    @cita = Cita.find_by_sql("SELECT * FROM citas WHERE cid = '#{params[:id]}'")[0]
    @todo = Cita.find_by_sql("SELECT nombre, apellido, fecha, comentario, telefono FROM Citas c, Pacientes p WHERE c.pid=p.pid AND cid = '#{params[:id]}'")[0]
  end

  private
  def cita_params
    params.require(:cita).permit(:pid, :fecha, :comentario, :edad_actual, :peso_actual, :altura_actual, :doc_id)
  end
end
