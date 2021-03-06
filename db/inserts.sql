#no hay inserts de usuarios, se hace manualmente por separado

#insert de assistants

INSERT INTO assistants VALUES (0, 'Betty Laguapa', 'betty123@hotmail.com', 'password', 0);

#insert de pacientes

INSERT INTO Pacientes VALUES (0, 'Juan', 
	'Rulfo', '8183029302', 
	'A+','M','Ateo',
	'casado',20121123,
	'Avenida del Pueblo, Comala 66321', 
	'jrulfo@llano.mx', 0);

INSERT INTO Pacientes VALUES (1, 'Frida', 
	'Khalo', '823839233', 
	'O-','F','Catolica',
	'casado',20130612,
	'Calle Londres, Coyocan 8492', 
	'frida_rivera@autoretrato.com', 0);

INSERT INTO Pacientes VALUES (2, 'Nahum', 
	'Zenil', '39405342', 
	'AB+','M','Ateo',
	'soltero',20130226,
	'Calle de la Soledad, Colonia Roma 948020', 
	'zenil@nahum.com', 0);

INSERT INTO Pacientes VALUES (3, 'Carlos', 
	'Salinas', '830306660', 
	'B-','M','Ateo',
	'casado',20111201,
	'Avenida Cancun, Solidaridad 95305', 
	'carlitos_saldegor@telmex.com', 1);

INSERT INTO Pacientes VALUES (4, 'Frida', 
	'Khalo', '823839233', 
	'O-','F','Catolica',
	'casado',20131012,
	'Calle Londres, Coyocan 8492', 
	'frida_rivera@autoretrato.com', 1);

INSERT INTO Pacientes VALUES (5, 'Carlos', 
	'Salinas', '830306660', 
	'B-','M','Ateo',
	'casado',20091201,
	'Avenida Cancun, Solidaridad 95305', 
	'carlitos_saldegor@telmex.com', 1);

#insert de citas

INSERT INTO Citas VALUES (0, 0, 20131115, 'Estaba llorando el bebe.',
	12, 2.3, 50, 0);
INSERT INTO Citas VALUES (1, 0, 20131116, 'El bebe seguia llorando.',
	12, 2.3, 50, 0);
INSERT INTO Citas VALUES (2, 1, 20131128, 'Tenia mucho moco.',
	6, 3.6, 60, 1);
INSERT INTO Citas VALUES (3, 2, 20131201, 'Visita rutinaria.',
	7, 2.8, 70, 1);

INSERT INTO Citas VALUES (4, 3, 20131202, 'Tenia fiebre.',
	24, 5.3, 80, 1);
INSERT INTO Citas VALUES (5, 4, 20131205, 'Le tocan vacunas al bebe.',
	2, 2.8, 70, 1);
INSERT INTO Citas VALUES (6, 5, 20131218, 'Tiene un lunar que quieren revisar.',
	48, 2.8, 70, 1);
INSERT INTO Citas VALUES (7, 2, 20131222, 'Lleva un dia devolviendo todo lo que come.',
	7, 2.8, 70, 1);
INSERT INTO Citas VALUES (8, 1, 20131230, 'Se corto el dedo con una lata.',
	6, 2.8, 70, 1);



#insert de historial
INSERT INTO HistorialMedico VALUES (0, 0, 20131230);
INSERT INTO HistorialMedico VALUES (1, 1, 20131230);
INSERT INTO HistorialMedico VALUES (2, 1, 20131230);
INSERT INTO HistorialMedico VALUES (3, 2, 20131230);
INSERT INTO HistorialMedico VALUES (4, 3, 20131230);
INSERT INTO HistorialMedico VALUES (5, 4, 20131230);

#insert de padecimientos

INSERT INTO Padecimientos VALUES( 0, 0, 'Gripa', 'Congestion nasal, estornudos, fiebre.');
INSERT INTO Padecimientos VALUES( 1, 1, 'Varicela', 'Erupciones cutaneos con mucho comezon.');
INSERT INTO Padecimientos VALUES( 2, 2, 'Rotavirus', 'Mucho vomito, diarrea y desidratacion.');
INSERT INTO Padecimientos VALUES( 3, 3, 'Paperas', 'Inflamacion corporal.');
INSERT INTO Padecimientos VALUES( 4, 4, 'Tos', 'Dificultad al respirar.');
INSERT INTO Padecimientos VALUES( 5, 5, 'Diarrea', 'Heces de consistencia fluida.');

#insert de Articulos prescritos

INSERT INTO ArticulosPrescritos VALUES( 0, 0, 'Benadryl', 2, 'Tomar 2 cucharadas antes de ir a dormir.');
INSERT INTO ArticulosPrescritos VALUES( 1, 3, 'Paracetamol', 1, 'Tomar con cada comida o cuando sienta dolor.');
INSERT INTO ArticulosPrescritos VALUES( 2, 4, 'Dextrometorfano', 1, 'Tomar con cada comida.');
INSERT INTO ArticulosPrescritos VALUES( 3, 5, 'Ambroxol', 2,'Tomar una con el desayuno y otra con la cena.');
INSERT INTO ArticulosPrescritos VALUES( 4, 6, 'Ampicilina', 1,'Tomar en ayuno.');
INSERT INTO ArticulosPrescritos VALUES( 5, 7, 'Antiflu-Des', 2,'Tomar dos con la comida.');
INSERT INTO ArticulosPrescritos VALUES( 6, 8, 'SensibitD', 1, 'Tomar con la comida y la cena junto con un vaso de agua grande.');


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
