CREATE TABLE users(
  u_id int,
  name varchar(255) not null,
  mail varchar(255) not null,
  password_digest varchar(255) not null,
  PRIMARY KEY(u_id)
);

CREATE TABLE assistants(
  aid int,
  name varchar(255) not null,
  mail varchar(255) not null,
  password_digest varchar(255) not null,
  doc_id int not null,
  PRIMARY KEY(aid),
  FOREIGN KEY(doc_id) REFERENCES users(u_id)
);

CREATE TABLE Pacientes(
  pid int,
  nombre varchar(150)  not null,  
  apellido varchar (150) not null,
  telefono varchar(10)  not null,
  tipo_sangre varchar(3) not null
    CHECK(tipo_sangre in ('A+','A-','B-', 'B+', 'AB-', 'AB+', 'O-', 'O+')),
  sexo char(1) not null
    CHECK(sexo in ('M','F')),
  religion varchar(100) not null,
  edo_civil varchar(15) not null
    CHECK(edo_civil in ('soltero','casado')),
  fechaNacimiento datetime not null,
  direccion varchar(255) not null,
  email varchar(255) not null,
  doc_id int not null,
  PRIMARY KEY(pid),
  FOREIGN KEY(doc_id) REFERENCES users(u_id)
);

CREATE TABLE Citas(
  cid int,
  pid int,
  fecha datetime not null,
  comentario varchar(140) not null
    DEFAULT 'sin atender',
  edad_actual int not null,
  peso_actual decimal not null,
  altura_actual decimal not null,
  doc_id int not null,
  PRIMARY KEY(cid),
  FOREIGN KEY(pid) REFERENCES Pacientes(pid),
  FOREIGN KEY(doc_id) REFERENCES users(u_id)
);

CREATE TABLE HistorialMedico(
  hid int,
  pid int,
  fecha datetime not null,
  PRIMARY KEY(hid),
  FOREIGN KEY(pid) REFERENCES Pacientes(pid)
);

CREATE TABLE Padecimientos(
  eid int,
  hid int,
  nombre varchar(255) not null,
  descripcion varchar(150) not null
    DEFAULT 'Descripción del padecimiento',
  PRIMARY KEY(eid),
  FOREIGN KEY(hid) REFERENCES HistorialMedico(hid)
);

CREATE TABLE ArticulosPrescritos(
  aid int,
  cid int,
  nombre varchar(255) not null,
  cantidad int not null,
  frecuencia varchar(100) not null,
  PRIMARY KEY(aid),
  FOREIGN KEY(cid) REFERENCES Citas(cid)
);

CREATE TABLE Vacunas(
  vid int,
  nombre varchar(255) not null,
  description varchar(255) not null,
  PRIMARY KEY(vid)
);

CREATE TABLE VacunasDeHistorial(
  histId int,
  vid int,
  PRIMARY KEY(histId, vid),
  FOREIGN KEY(histId) REFERENCES HistorialMedico(hId),
  FOREIGN KEY(vid) REFERENCES Vacunas(vid)
);
