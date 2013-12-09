#insert de usuarios

INSERT INTO users VALUES (0, 'Julio Galan', 'julio@marco.mx', 'password');
INSERT INTO users VALUES (1, 'Gabriel Garcia Marquez', 'ggm@macondo.com', 'password');


#insert de assistants

INSERT INTO assistants VALUES (0, 'Betty Laguapa', 'betty123@hotmail.com', 'password', 0);


#insert de pacientes

INSERT INTO Pacientes VALUES (0, 'Juan', 
	'Rulfo', '8183029302', 
	'A+','M','Ateo',
	'casado',2012-11-23,
	'Avenida del Pueblo, Comala 66321', 
	'jrulfo@llano.mx', 0);

INSERT INTO Pacientes VALUES (1, 'Frida', 
	'Khalo', '823839233', 
	'O-','F','Catolica',
	'casado',2013-6-12,
	'Calle Londres, Coyocan 8492', 
	'frida_rivera@autoretrato.com', 0);

INSERT INTO Pacientes VALUES (2, 'Nahum', 
	'Zenil', '39405342', 
	'AB+','M','Ateo',
	'soltero',2013-2-26,
	'Calle de la Soledad, Colonia Roma 948020', 
	'zenil@nahum.com', 0);

INSERT INTO Pacientes VALUES (3, 'Carlos', 
	'Salinas', '830306660', 
	'B-','M','Ateo',
	'casado',2011-12-1,
	'Avenida Cancun, Solidaridad 95305', 
	'carlitos_saldegor@telmex.com', 1);

INSERT INTO Pacientes VALUES (4, 'Frida', 
	'Khalo', '823839233', 
	'O-','F','Catolica',
	'casado',2013-10-12,
	'Calle Londres, Coyocan 8492', 
	'frida_rivera@autoretrato.com', 1);

INSERT INTO Pacientes VALUES (5, 'Carlos', 
	'Salinas', '830306660', 
	'B-','M','Ateo',
	'casado',2009-12-1,
	'Avenida Cancun, Solidaridad 95305', 
	'carlitos_saldegor@telmex.com', 1);

#insert de citas

INSERT INTO Citas VALUES (0, 0, 2013-11-15, 'Estaba llorando el bebe.',
	12, 2.3, 50, 0);
INSERT INTO Citas VALUES (1, 0, 2013-11-16, 'El bebe seguia llorando.',
	12, 2.3, 50, 0);
INSERT INTO Citas VALUES (2, 1, 2013-11-28, 'Tenia mucho moco.',
	6, 3.6, 60, 1);
INSERT INTO Citas VALUES (3, 2, 2013-12-1, 'Visita rutinaria.',
	7, 2.8, 70, 1);

INSERT INTO Citas VALUES (4, 3, 2013-12-2, 'Tenia fiebre.',
	24, 5.3, 80, 1);
INSERT INTO Citas VALUES (5, 4, 2013-12-5, 'Le tocan vacunas al bebe.',
	2, 2.8, 70, 1);
INSERT INTO Citas VALUES (6, 5, 2013-12-18, 'Tiene un lunar que quieren revisar.',
	48, 2.8, 70, 1);
INSERT INTO Citas VALUES (7, 2, 2013-12-22, 'Lleva un dia devolviendo todo lo que come.',
	7, 2.8, 70, 1);
INSERT INTO Citas VALUES (8, 1, 2013-12-30, 'Se corto el dedo con una lata.',
	6, 2.8, 70, 1);



#insert de historial
INSERT INTO HistorialMedico VALUES (0, 0, 2013-01-15);
INSERT INTO HistorialMedico VALUES (1, 1, 2010-11-10);
INSERT INTO HistorialMedico VALUES (2, 1, 2009-03-16);
INSERT INTO HistorialMedico VALUES (3, 2, 2011-05-20);
INSERT INTO HistorialMedico VALUES (4, 3, 2003-07-11);
INSERT INTO HistorialMedico VALUES (5, 4, 2001-12-21);

#insert de padecimientos

INSERT INTO Padecimientos VALUES( 0, 0, 'Gripa', 'Congestion nasal, estornudos, fiebre.');
INSERT INTO Padecimientos VALUES( 1, 1, 'Varicela', 'Erupciones cutaneos con mucho comezon.');
INSERT INTO Padecimientos VALUES( 2, 2, 'Rotavirus', 'Mucho vomito, diarrea y desidratacion.');
INSERT INTO Padecimientos VALUES( 3, 3, 'Paperas', 'Inflamacion corporal.');
INSERT INTO Padecimientos VALUES( 4, 4, 'Tos', 'Dificultad al respirar.');
INSERT INTO Padecimientos VALUES( 5, 5, 'Diarrea', 'Heces de consistencia fluida.');

#insert de Articulos prescritos

INSERT INTO ArticulosPrescritos VALUES( 0, 0, 'Benadryl', 2, 1, 'Tomar 2 cucharadas antes de ir a dormir.');
INSERT INTO ArticulosPrescritos VALUES( 1, 3, 'Paracetamol', 1, 3, 'Tomar con cada comida o cuando sienta dolor.');
INSERT INTO ArticulosPrescritos VALUES( 2, 4, 'Dextrometorfano', 1, 3, 'Tomar con cada comida.');
INSERT INTO ArticulosPrescritos VALUES( 3, 5, 'Ambroxol', 2, 2,'Tomar una con el desayuno y otra con la cena.');
INSERT INTO ArticulosPrescritos VALUES( 4, 6, 'Ampicilina', 1, 1,'Tomar en ayuno.');
INSERT INTO ArticulosPrescritos VALUES( 5, 7, 'Antiflu-Des', 2, 1,'Tomar dos con la comida.');
INSERT INTO ArticulosPrescritos VALUES( 6, 8, 'SensibitD', 1, 2, 'Tomar con la comida y la cena junto con un vaso de agua grande.');


#insert de Vacunas

INSERT INTO Vacunas VALUES ( 0, 'BCG', 0, 'Previene Tuberculosis.');
INSERT INTO Vacunas VALUES ( 1, 'Hepatitis B (1 de 3)', 0 , 'Previene la Hepatitis B');
INSERT INTO Vacunas VALUES ( 2, 'Hepatitis B (2 de 3)', 2 , 'Previene la Hepatitis B');
INSERT INTO Vacunas VALUES ( 3, 'Hepatitis B (3 de 3)', 6 ,'Previene la Hepatitis B');
INSERT INTO Vacunas VALUES ( 4, 'Pentavalente Acelular (1 de 4)', 2, 'Previene Diftera, Tosferina, Tetanos y Poliomelitis.');
INSERT INTO Vacunas VALUES ( 5, 'Pentavalente Acelular (2 de 4)', 4, 'Previene Diftera, Tosferina, Tetanos y Poliomelitis.');
INSERT INTO Vacunas VALUES ( 6, 'Pentavalente Acelular (3 de 4)', 6, 'Previene Diftera, Tosferina, Tetanos y Poliomelitis.');
INSERT INTO Vacunas VALUES ( 7, 'Pentavalente Acelular (4 de 4)', 18, 'Previene Diftera, Tosferina, Tetanos y Poliomelitis.');
INSERT INTO Vacunas VALUES ( 8, 'Rotavirus (1 de 3)', 2, 'Previene el Rotavirus.');
INSERT INTO Vacunas VALUES ( 9, 'Rotavirus (2 de 3)', 4, 'Previene el Rotavirus.');
INSERT INTO Vacunas VALUES ( 10, 'Rotavirus (3 de 3)', 6, 'Previene el Rotavirus.');
INSERT INTO Vacunas VALUES ( 11, 'Neumococo (1 de 3)', 2, 'Previene el Neumococo.');
INSERT INTO Vacunas VALUES ( 12, 'Neumococo (2 de 3)', 4, 'Previene el Neumococo.');
INSERT INTO Vacunas VALUES ( 13, 'Neumococo (3 de 3)', 12, 'Previene el Neumococo. Se administra entre los 12 y 18 meses.');
INSERT INTO Vacunas VALUES ( 14, 'Influenza (1 de 2)', 6, 'Previene la Influenza.');
INSERT INTO Vacunas VALUES ( 15, 'Influenza (2 de 2)', 7, 'Previene la Influenza.');
INSERT INTO Vacunas VALUES ( 16, 'SRP (1 de 2)', 12, 'Previene Sarampión, Rubéola y Parotiditis (Paperas).');
INSERT INTO Vacunas VALUES ( 17, 'SRP (2 de 2)', 72, 'Previene Sarampión, Rubéola y Parotiditis (Paperas).');
INSERT INTO Vacunas VALUES ( 18, 'DPT', 48 , 'Previene Diftera, Tosferina y Tetanos.');

#insert de vacunas de pacientes
INSERT INTO VacunasDePacientes VALUES (0,0);
INSERT INTO VacunasDePacientes VALUES (0,1);
INSERT INTO VacunasDePacientes VALUES (0,2);
INSERT INTO VacunasDePacientes VALUES (0,4);
INSERT INTO VacunasDePacientes VALUES (0,8);
INSERT INTO VacunasDePacientes VALUES (0,11);

INSERT INTO VacunasDePacientes VALUES (1,0);
INSERT INTO VacunasDePacientes VALUES (1,1);
INSERT INTO VacunasDePacientes VALUES (1,2);
INSERT INTO VacunasDePacientes VALUES (1,4);
INSERT INTO VacunasDePacientes VALUES (2,0);
INSERT INTO VacunasDePacientes VALUES (2,1);
INSERT INTO VacunasDePacientes VALUES (2,4);
INSERT INTO VacunasDePacientes VALUES (2,5);
INSERT INTO VacunasDePacientes VALUES (2,8);
INSERT INTO VacunasDePacientes VALUES (2,11);

INSERT INTO VacunasDePacientes VALUES (3,0);
INSERT INTO VacunasDePacientes VALUES (3,1);
INSERT INTO VacunasDePacientes VALUES (3,2);
INSERT INTO VacunasDePacientes VALUES (3,4);
INSERT INTO VacunasDePacientes VALUES (3,8);
INSERT INTO VacunasDePacientes VALUES (3,11);
INSERT INTO VacunasDePacientes VALUES (3,2);
INSERT INTO VacunasDePacientes VALUES (3,5);
INSERT INTO VacunasDePacientes VALUES (3,9);
INSERT INTO VacunasDePacientes VALUES (3,12);

INSERT INTO VacunasDePacientes VALUES (4,0);
INSERT INTO VacunasDePacientes VALUES (4,1);
INSERT INTO VacunasDePacientes VALUES (4,2);
INSERT INTO VacunasDePacientes VALUES (4,4);
INSERT INTO VacunasDePacientes VALUES (4,8);
INSERT INTO VacunasDePacientes VALUES (4,11);

INSERT INTO VacunasDePacientes VALUES (5,1);
INSERT INTO VacunasDePacientes VALUES (5,2);
INSERT INTO VacunasDePacientes VALUES (5,4);
INSERT INTO VacunasDePacientes VALUES (5,8);
INSERT INTO VacunasDePacientes VALUES (5,11);
INSERT INTO VacunasDePacientes VALUES (5,3);
INSERT INTO VacunasDePacientes VALUES (5,5);
INSERT INTO VacunasDePacientes VALUES (5,9);
INSERT INTO VacunasDePacientes VALUES (5,12);

INSERT INTO VacunasDePacientes VALUES (6,0);
INSERT INTO VacunasDePacientes VALUES (6,1);
INSERT INTO VacunasDePacientes VALUES (6,2);
INSERT INTO VacunasDePacientes VALUES (6,4);
INSERT INTO VacunasDePacientes VALUES (6,8);
INSERT INTO VacunasDePacientes VALUES (6,11);
INSERT INTO VacunasDePacientes VALUES (6,3);
INSERT INTO VacunasDePacientes VALUES (6,5);
INSERT INTO VacunasDePacientes VALUES (6,9);
INSERT INTO VacunasDePacientes VALUES (6,12);
INSERT INTO VacunasDePacientes VALUES (6,13);

INSERT INTO VacunasDePacientes VALUES (7,0); 
INSERT INTO VacunasDePacientes VALUES (7,1); 
INSERT INTO VacunasDePacientes VALUES (7,2);
INSERT INTO VacunasDePacientes VALUES (7,4); 
INSERT INTO VacunasDePacientes VALUES (7,5);
INSERT INTO VacunasDePacientes VALUES (7,6);
INSERT INTO VacunasDePacientes VALUES (7,8); 
INSERT INTO VacunasDePacientes VALUES (7,9);
INSERT INTO VacunasDePacientes VALUES (7,10);
INSERT INTO VacunasDePacientes VALUES (7,11); 
INSERT INTO VacunasDePacientes VALUES (7,12);
INSERT INTO VacunasDePacientes VALUES (7,14); 
INSERT INTO VacunasDePacientes VALUES (7,16); 
INSERT INTO VacunasDePacientes VALUES (7,18); 

INSERT INTO VacunasDePacientes VALUES (8,0); 
INSERT INTO VacunasDePacientes VALUES (8,1); 
INSERT INTO VacunasDePacientes VALUES (8,4); 
INSERT INTO VacunasDePacientes VALUES (8,5);
INSERT INTO VacunasDePacientes VALUES (8,8); 
INSERT INTO VacunasDePacientes VALUES (8,14); 
INSERT INTO VacunasDePacientes VALUES (8,16); 
INSERT INTO VacunasDePacientes VALUES (8,18); 

INSERT INTO VacunasDePacientes VALUES (9,0); 
INSERT INTO VacunasDePacientes VALUES (9,1); 
INSERT INTO VacunasDePacientes VALUES (9,2);
INSERT INTO VacunasDePacientes VALUES (9,4); 
INSERT INTO VacunasDePacientes VALUES (9,8); 
INSERT INTO VacunasDePacientes VALUES (9,9);
INSERT INTO VacunasDePacientes VALUES (9,10);
INSERT INTO VacunasDePacientes VALUES (9,11); 
INSERT INTO VacunasDePacientes VALUES (9,14); 
INSERT INTO VacunasDePacientes VALUES (9,16); 





  
