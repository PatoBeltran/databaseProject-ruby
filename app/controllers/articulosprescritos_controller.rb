class ArticulosprescritosController < ApplicationController
  def new
    @articuloprescrito = Articulosprescrito.new
    @cita = Cita.find_by_sql("SELECT * FROM citas WHERE cid='#{params[:cita_id]}'")[0]
  end
  def create
    @articuloprescrito = Articulosprescrito.new(articulos_params)
    @cita = Cita.find_by_sql("SELECT * FROM citas WHERE cid='#{params[:cita_id]}'")[0]
    begin
      id= ActiveRecord::Base.connection.execute("SELECT COUNT(*) FROM articulosprescritos;")
      id.each do |row|
        id = row
      end
      id = id[0].to_i
      raw_sql = "INSERT INTO articulosprescritos (aid, cid, nombre, cantidad, frecuencia) VALUES ('#{id}', '#{@cita.cid}', '#{params[:articulosprescrito][:nombre]}', '#{params[:articulosprescrito][:cantidad]}', '#{params[:articulosprescrito][:frecuencia]}');"

      ActiveRecord::Base.connection.execute raw_sql

      redirect_to cita_url(@cita), notice: "¡Se ha agregado un articulo prescrito!"
    rescue
      flash[:notice] = "Algo en la forma esta incorrecto, favor de verificar el formato"
      render :new
    end
  end
  private
  def articulos_params
    params.require(:articulosprescrito).permit(:nombre, :cantidad, :frecuencia)
  end
end
