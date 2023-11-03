Proceso vacuna
	// Declaración de variables
	
	const int MAX_TURNOS = 5;txt
	const int MAX_PACIENTES = 100;
	
	arreglo[MAX_VACUNAS] cadena vacunas;
	arreglo[MAX_TURNOS] cadena turnos;

	
	cadena nombre;
	entero dni;
	real edad;
	cadena vacuna;
	entero dia;
	entero hora;
	
fin estructura

arreglo[MAX_PACIENTES] paciente pacientes;

// Funciones

// Validar número

funcion validar_numero(cadena numero : cadena) : booleano
			
			// Iterar sobre todos los caracteres del número
			para i desde 0 hasta numero.longitud() - 1
				
				// Si el carácter no es un dígito, devolver falso
				si no es_digito(numero[i])
					devolver falso
				fin si
				
			fin para
			
			// Si se llegó al final del ciclo, el número es válido
			devolver verdadero
			
		fin funcion
		
		// Validar edad
		
	funcion validar_edad(real edad : real) : booleano;
				
				// Si la edad es menor que cero o mayor que 120, devolver falso
				si edad < 0 o bien edad > 120 entonces 
					devolver falso
				fin si
				
				// Si la edad es válida, devolver verdadero
				devolver = verdadero
				
			fin funcion
			
			// Validar DNI
			
		funcion validar_dni(entero dni : entero) : booleano
					
					// Si el DNI es menor que 1 o mayor que 99999999, devolver falso
					si dni < 1 o bien dni > 99999999 entonces 
						devolver falso
					fin si
					
					// Si el DNI es válido, devolver verdadero
					devolver verdadero
					
				fin funcion
				
				// Validar vacuna
				
			funcion validar_vacuna(cadena vacuna : cadena) : booleano
						
						// Iterar sobre todos los arreglos de vacunas
						para i desde 0 hasta vacunas.longitud() - 1
							
							// Si la vacuna coincide con alguna de las vacunas del arreglo, devolver verdadero
							si vacuna == vacunas[i]
								devolver verdadero
							fin si
							
						fin para
						
						// Si no se encontró ninguna vacuna coincidente, devolver falso
						devolver falso
						
					fin funcion
					
					// Reservar turno
					
					procedimiento reservar_turno()
					
					// Mostrar agenda de turnos
					
					mostrar_agenda()
					
					// Seleccionar día y horario
					
					entero dia;
					entero hora;
					repetir
						escribir "Ingrese el día del turno (1-5): ";
						leer dia
						hasta (dia >= 1 y dia <= 5)
						
						repetir
							escribir "Ingrese la hora del turno (1-7): ";
							leer hora
							hasta (hora >= 1 y hora <= 7)
							
							// Ingresar datos del paciente
							
							cadena nombre;
							cadena apellido;
							cadena vacuna;
							real edad;
							escribir "Ingrese el nombre del paciente: ";
							leer nombre
							escribir "Ingrese el apellido del paciente: ";
							leer apellido
							escribir "Ingrese la edad del paciente (meses): ";
							leer edad;
							escribir "Ingrese la vacuna a aplicar: ";
							leer vacuna;
							
							// Validar datos del paciente
							
							si no validar_nombre(nombre) entonces 
								escribir "El nombre del paciente no es válido";
								return
							fin si
							
							si no validar_apellido(apellido) entonces 
								escribir "El apellido del paciente no es válido";
								return
							fin si
							
							si no validar_edad(edad) entonces 
								escribir "La edad del paciente no es válida";
								return
							fin si
							
							si no validar_vacuna(vacuna) entonces 
								escribir "La vacuna a aplicar no es válida";
								return
							fin si
							
							// Reservar turno
							
							turnos[dia - 1][hora - 1] = nombre + " " + apellido
							pacientes[pacientes.longitud()] = {nombre, apellido, dni, edad, vacuna, dia, hora}
							
							// Mostrar resumen
							
							escribir "Turno reservado";

FinProceso
					
							
