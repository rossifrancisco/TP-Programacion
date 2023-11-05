// buscar pacientes 
subproceso cantidadpacientes(datospacientes)
	definir encontrado como logico 
	encontrado = falso
	Mostrar" ingresar el dni a buscar "
	Definir dni,i como entero 
	i=0
	leer dni 
	repetir 
		si convertiranumero(datospacientes[i,1]) = dni Entonces 
			muestra(datosPacientes, i)
			encontrado = verdadero
			Esperar tecla 
		sino 
		
		
			
			
			i=i+1
			
		FinSi
	Mientras Que i<40 y no encontrado 
	si no encontrado entonces 
		mostrar "paciente no encontrado"
		esperar tecla 
	finsi
finsubproceso 
