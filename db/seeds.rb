# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

@user1= User.new({name: "Julio Galan", mail: "julio@marco.mx",password: "password", password_confirmation: "password"})
@user2= User.new({name: "Gabriel Garcia Marquez", mail: "ggm@macondo.com", password: "password", password_confirmation: "password"})

raw_sql1 = "INSERT INTO users (u_id, name, mail, password_digest) VALUES ('0', '#{@user1.name}', '#{@user1.mail}', '#{@user1.password_digest}');"
raw_sql2 = "INSERT INTO users (u_id, name, mail, password_digest) VALUES ('1', '#{@user2.name}', '#{@user2.mail}', '#{@user2.password_digest}');"

connection = ActiveRecord::Base.connection

ActiveRecord::Base.connection.execute raw_sql1
ActiveRecord::Base.connection.execute raw_sql2

sql = File.read('db/inserts.sql')
statements = sql.split(/;$/)
statements.pop

ActiveRecord::Base.transaction do
  statements.each do |statement|
    connection.execute(statement)
  end
end
