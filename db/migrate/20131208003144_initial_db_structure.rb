class InitialDbStructure < ActiveRecord::Migration
  def up
    sql = File.read('db/initial_schema.sql')
    statements = sql.split(/;$/)
    statements.pop

    statements.each do |statement|
      execute(statement)
    end
  end
  def down
    drop_table :vacunasdehistorial
    drop_table :articulosprescritos
    drop_table :padecimientos
    drop_table :citas
    drop_table :historialmedico
    drop_table :vacunas
    drop_table :pacientes
    drop_table :assistants
    drop_table :users
  end
end
