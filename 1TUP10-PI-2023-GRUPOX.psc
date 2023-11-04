Algoritmo vacunatorio
	definir opcion1, opcion2, contador, neumococo, poliomielitis, quintuple, rotavirus, meningococo, tripleViral, lunes, martes, miercoles, jueves, viernes Como Entero
	contador=0
	neumococo=10
	poliomielitis=10
	quintuple=10
	rotavirus=10
	meningococo=10
	tripleViral=10
	lunes=0
	martes=0
	miercoles=0
	jueves=0
	viernes=0
	Definir turnos, datosPacientes Como caracter
	Dimension turnos[5,8]
	Dimension datosPacientes[40,6]
	
	inicializacionArregloTurnos(turnos)
	Repetir
		Limpiar Pantalla
		Mostrar "1. reservar turno"
		Mostrar "2. buscar paciente"
		Mostrar "3. ver agenda vacunatorio"
		Mostrar "4. lista de pacientes ordenada"
		Mostrar "5. ver cantidades"
		Mostrar "0. salir"
		Repetir
			leer opcion1
			si opcion1<0 o opcion1>5 entonces
				Mostrar "opcion invalida, ingrese otra"
			FinSi
		Mientras Que opcion1<0 o opcion1>5
		
		segun opcion1 Hacer
			caso 1:
				Limpiar Pantalla
				si contador <= 39 Entonces
					mostrarTurnosDisponibles(turnos)
					cargaDatosPacientes(turnos, datosPacientes, contador, neumococo, poliomielitis, quintuple, rotavirus, meningococo, tripleViral, lunes, martes, miercoles, jueves, viernes)
				SiNo
					Mostrar "lo sentimos, no quedan turnos disponibles"
					Mostrar ""
					Mostrar "presione una tecla para volver al menu"
					Esperar Tecla
				FinSi
			caso 2:
				Limpiar Pantalla
				Mostrar "opcion 2"
				Esperar Tecla
			caso 3:
				Limpiar Pantalla
				mostrarTurnosDisponibles(turnos)
				Mostrar ""
				Mostrar "presione una tecla para volver almenu"
				Esperar Tecla
			caso 4:
				repetir
					
					Limpiar Pantalla
					mostrarDatos(datosPacientes)
					Esperar Tecla
					
					Limpiar Pantalla
					Mostrar "1. ordenar por edad"
					Mostrar "2. ordenar por vacuna"
					Mostrar "0. volver al menu"
					Repetir
						leer opcion2
						si opcion2<0 o opcion2>2 entonces
							Mostrar "opcion invalida, ingrese otra"
						FinSi
					Mientras Que opcion2<0 o opcion2>2
					
					segun opcion2 Hacer
						caso 1:
							Limpiar Pantalla
							Mostrar "opcion 1"
							Esperar Tecla
						caso 2:
							Limpiar Pantalla
							Mostrar "opcion 2"
							Esperar Tecla
						caso 0:
						De Otro Modo:
							Mostrar "no deberias estar leyendo esto, halgo ha salido mal"
					FinSegun
				Mientras Que opcion2<>0
			caso 5:
				Limpiar Pantalla
				Repetir
					
					Limpiar Pantalla
					Mostrar "1. cantidad de turnos por dia"
					Mostrar "2. cantidad de vacunas a aplicar de cada tipo"
					Mostrar "0. volver al menu"
					Repetir
						leer opcion2
						si opcion2<0 o opcion2>2 entonces
							Mostrar "opcion invalida, ingrese otra"
						FinSi
					Mientras Que opcion2<0 o opcion2>2
					
					segun opcion2 Hacer
						caso 1:
							Limpiar Pantalla
							cantidadTurnosDias(lunes, martes, miercoles, jueves, viernes)
							Esperar Tecla
						caso 2:
							Limpiar Pantalla
							cantidadVacunasTipos(neumococo, poliomielitis, quintuple, rotavirus, meningococo, tripleViral)
							Esperar Tecla
						caso 0:
						De Otro Modo:
							Mostrar "no deberias estar leyendo esto, halgo ha salido mal"
					FinSegun
				Mientras Que opcion2<>0
			caso 0:
				Limpiar Pantalla
				Mostrar "hasta la proxima"
			de otro modo:
				Limpiar Pantalla
				Mostrar "no deberias estar leyendo esto, halgo ha salido mal"
		FinSegun
	Mientras Que opcion1<>0
FinAlgoritmo



//INICIALIZACION DE TURNOS
SubProceso inicializacionArregloTurnos(turnos)
	Definir i, j Como Entero
	definir mediaHora, unaHora, horario como caracter
	definir z Como Real
	para i=0 Hasta 4 Hacer
		horario="08"
		mediaHora=":30 Hs"
		unaHora=":00 Hs"
		para j=0 Hasta 6 con paso 2 Hacer
			turnos[i,j] = horario + unaHora
			turnos[i,j+1] = horario + mediaHora
			z = convertiranumero(horario)
			z = z + 1
			si j<2 Entonces
				horario = "0" + convertiratexto(z)
			SiNo
				horario = convertiratexto(z)
			FinSi
		FinPara
	FinPara
FinSubProceso



// MOSTRAR TURNOS DISPONIBLES
subproceso mostrarTurnosDisponibles(turnos)
	definir dia, hora, i, j, DNI, vacuna Como Entero
	definir edad Como Real
	
	Mostrar "horarios disponibles:"
	Mostrar ""
	para i=0 Hasta 4 Hacer
		segun i Hacer
			caso 0:
				Mostrar Sin Saltar "lunes ----- (",i+1, ") |"
			caso 1:
				Mostrar Sin Saltar "martes ---- (",i+1, ") |"
			caso 2:
				Mostrar Sin Saltar "miercoles - (",i+1, ") |"
			caso 3:
				Mostrar Sin Saltar "jueves ---- (",i+1, ") |"
			caso 4:
				Mostrar Sin Saltar "viernes --- (",i+1, ") |"
		FinSegun
		para j=0 Hasta 7 Hacer
			si turnos[i,j] <> "0" Entonces
				Mostrar Sin Saltar "| ",j+1,". ", turnos[i,j], " |"
			SiNo
				Mostrar Sin Saltar "| XXXXXXXXXXX |"
			FinSi
		FinPara
		Mostrar "| "
	FinPara
FinSubProceso



//CARGAR DATOS PACIENTES
SubProceso cargaDatosPacientes(turnos, datosPacientes, contador Por Referencia, neumococo Por Referencia, poliomielitis Por Referencia, quintuple Por Referencia, rotavirus Por Referencia, meningococo Por Referencia, tripleViral Por Referencia, lunes Por Referencia, martes Por Referencia, miercoles Por Referencia, jueves Por Referencia, viernes Por Referencia)
	definir nombre Como Caracter
	Definir DNI, vacuna Como Entero
	definir edad Como Real
	Definir control Como Logico
	control = falso
	Repetir
		Repetir
			Mostrar "elija un dia"
			leer dia
			Si dia<1 o dia>5 Entonces
				Mostrar "dia invalido"
			FinSi
		Mientras Que dia<1 o dia>5
		
		Repetir
			Mostrar "elija un horario"
			leer hora
			Si hora<1 o hora>8 Entonces
				Mostrar "horario invalido"
			FinSi
		Mientras Que hora<1 o hora>8
		
		Si turnos[dia-1, hora-1]="0" Entonces
			Mostrar "turno no disponible"
		FinSi
	Mientras Que turnos[dia-1, hora-1]="0"
	
	Limpiar Pantalla
	mostrar "ingrese su nombre y apellido"
	leer nombre
	
	Mostrar "ingrese su DNI"
	Repetir
		leer DNI
		si DNI<1000000 o DNI>99999999 Entonces
			Mostrar "DNI invalido, ingrese otro"
		FinSi
	Mientras Que DNI<1000000 o DNI>99999999
	
	Mostrar "ingrese su edad"
	Mostrar "si la edad es menor a un año puede ingresar la cantidad de meses de la siguiente forma"
	Mostrar "ejemplo 0.6 para seis meses"
	Repetir
		leer edad
		si edad<=0 o edad>110 Entonces
			Mostrar "edad invalida, ingrese otra"
		FinSi
	Mientras Que edad<=0 o edad>110
	
	Mostrar "elija una vacuna"
	Mostrar "1. neumococo"
	Mostrar "2. poliomielitis"
	Mostrar "3. quintuple"
	Mostrar "4. rotavirus"
	Mostrar "5. meningococo"
	Mostrar "6. triple viral"
	Mostrar "0. cancelar turno actual"
	Repetir
		leer vacuna
		si vacuna<0 o vacuna>6 Entonces
			mostrar "opcion invalida, ingrese otra"
		FinSi
	Mientras Que vacuna<0 o vacuna>6
	
	Repetir
		segun vacuna Hacer
			caso 1:
				si neumococo = 0 Entonces
					noHayMasVacunas(vacuna)
				SiNo
					datosPacientes[contador,3]="neumococo"
					neumococo = neumococo - 1
					control = verdadero
				FinSi
			caso 2:
				si poliomielitis = 0 Entonces
					noHayMasVacunas(vacuna)
				SiNo
					datosPacientes[contador,3]="poliomielitis"
					poliomielitis = poliomielitis - 1
					control = verdadero
				FinSi
			caso 3:
				si quintuple = 0 Entonces
					noHayMasVacunas(vacuna)
				SiNo
					datosPacientes[contador,3]="quintuple"
					quintuple = quintuple - 1
					control = verdadero
				FinSi
			caso 4:
				si rotavirus = 0 Entonces
					noHayMasVacunas(vacuna)
				SiNo
					datosPacientes[contador,3]="rotavirus"
					rotavirus = rotavirus - 1
					control = verdadero
				FinSi
			caso 5:
				si meningococo = 0 Entonces
					noHayMasVacunas(vacuna)
				SiNo
					datosPacientes[contador,3]="meningococo"
					meningococo = meningococo - 1
					control = verdadero
				FinSi
			caso 6:
				si tripleViral = 0 Entonces
					noHayMasVacunas(vacuna)
				SiNo
					datosPacientes[contador,3]="triple viral"
					tripleViral = tripleViral - 1
					control = verdadero
				FinSi
			caso 0:
			de otro modo:
				Mostrar "no deberias estar leyendo esto, halgo ha salido mal"
		FinSegun
	hasta que control o vacuna=0
	
	si vacuna<>0 Entonces
		datosPacientes[contador,0] = nombre
		datosPacientes[contador,1] = ConvertirATexto(DNI)
		datosPacientes[contador,2]=ConvertirATexto(edad)
		segun dia Hacer
			caso 1:
				datosPacientes[contador,4]="lunes"
				lunes=lunes+1
			caso 2:
				datosPacientes[contador,4]="martes"
				martes=martes+1
			caso 3:
				datosPacientes[contador,4]="miercoles"
				miercoles=miercoles+1
			caso 4:
				datosPacientes[contador,4]="jueves"
				jueves=jueves+1
			caso 5:
				datosPacientes[contador,4]="viernes"
				viernes=viernes+1
		FinSegun
		datosPacientes[contador,5] = turnos[dia-1, hora-1]
		turnos[dia-1, hora-1]="0"
		
		Limpiar Pantalla
		mostrar "resumen:"
		muestra(datosPacientes, contador)
		Mostrar "presione una tecla para continuar"
		contador = contador + 1
		Esperar Tecla
	FinSi
FinSubProceso



//AVISO DE QUE NO QUEDAN VACUNAS
subProceso noHayMasVacunas(vacuna Por Referencia)
	Mostrar "ya no quedan vacunas de ese tipo"
	mostrar "1-6. elegir otra"
	Mostrar "0. cancelar turno actual"
	Repetir
		leer vacuna
		si vacuna<0 o vacuna>6 Entonces
			mostrar "opcion invalida, ingrese otra"
		FinSi
	Mientras Que vacuna<0 o vacuna>6
FinSubProceso



//LISTA DE PACIENTES
SubProceso mostrarDatos(datosPacientes)
	para i=0 Hasta 39 Hacer
		si datosPacientes[i,0] <> "" Entonces
			Mostrar "paciente: ", i+1
			muestra(datosPacientes, i)
		FinSi
	FinPara
	Mostrar "presione una tecla para volver al menu"
FinSubProceso



//MUESTRA CADA VEZ QUE HAY QUE MOSTRAR
subproceso muestra(datosPacientes, i)
	Mostrar "nombre y apellido ----- ", datosPacientes[i,0]
	Mostrar "DNI ------------------- ", datosPacientes[i,1]
	Mostrar Sin Saltar "edad ------------------ ", datosPacientes[i,2]
	si convertiranumero(datosPacientes[i,2])=0.1 Entonces
		Mostrar " mes"
	SiNo
		si convertiranumero(datosPacientes[i,2])<1 Entonces
			Mostrar " meses"
		SiNo
			si convertiranumero(datosPacientes[i,2])=1 Entonces
				Mostrar " año"
			sino
				Mostrar " años"
			FinSi
		FinSi
	FinSi
	Mostrar "vacuna----------------- ", datosPacientes[i,3]
	Mostrar "dia ------------------- ", datosPacientes[i,4]
	Mostrar "hora ------------------ ", datosPacientes[i,5]
	Mostrar ""
FinSubProceso

//CANTIDAD DE TURNOS
subproceso cantidadTurnosDias(lunes, martes, miercoles, jueves, viernes)
	Mostrar "la cantidad de turnos del lunes es de ", lunes
	Mostrar "la cantidad de turnos del martes es de ", martes
	Mostrar "la cantidad de turnos del miercoles es de ", miercoles
	Mostrar "la cantidad de turnos del jueves es de ", jueves
	Mostrar "la cantidad de turnos del viernes es de ", viernes
	Mostrar ""
	Mostrar "presione una tecla para volver al menu"
FinSubProceso



//CANTIDAD DE VACUNAS
SubProceso cantidadVacunasTipos(neumococo, poliomielitis, quintuple, rotavirus, meningococo, tripleViral)
	Mostrar "la cantidad de vacunas de neumococo a aplicar esta semana es de: ", 10 - neumococo
	Mostrar "la cantidad de vacunas de poliomielitis a aplicar esta semana es de: ", 10 - poliomielitis
	Mostrar "la cantidad de vacunas de quintuple a aplicar esta semana es de: ", 10 - quintuple
	Mostrar "la cantidad de vacunas de rotavirus a aplicar esta semana es de: ", 10 - rotavirus
	Mostrar "la cantidad de vacunas de meningococo a aplicar esta semana es de: ", 10 - meningococo
	Mostrar "la cantidad de vacunas de triple viral a aplicar esta semana es de: ", 10 - tripleViral
	Mostrar ""
	Mostrar "presione una tecla para volver al menu"
FinSubProceso