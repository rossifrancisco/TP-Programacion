Proceso Algoritmo_vacunatorio
		definir opcion1, opcion2 Como Entero;
		
		Repetir
			Repetir
				Limpiar Pantalla;
				Mostrar "1. reservar turno";
				Mostrar "2. buscar paciente";
				Mostrar "3. ver agenda vacunatorio";
				Mostrar "4. lista de pacientes ordenada";
				Mostrar "5. ver cantidades";
				Mostrar "0. salir";
				leer opcion1;
				
				si opcion1<0 o opcion1>5 entonces
					Limpiar Pantalla;
					Mostrar "opcion invalida, presione enter para volver al menu";
					Esperar Tecla;
				FinSi
			Mientras Que opcion1<0 o opcion1>5
			
			segun opcion1 Hacer
				caso 1:
					Limpiar Pantalla;
					Mostrar "opcion 1";
					Esperar Tecla;
				caso 2:
					Limpiar Pantalla;
					Mostrar "opcion 2";
					Esperar Tecla;
				caso 3:
					Limpiar Pantalla;
					Mostrar "opcion 3";
					Esperar Tecla;
				caso 4:
					Limpiar Pantalla;
					repetir
						Repetir
							Limpiar Pantalla;
							Mostrar "1. ordenar por edad";
							Mostrar "2. ordenar por vacuna";
							Mostrar "0. volver al menu";
							leer opcion2;
							
							si opcion2<0 o opcion2>2 entonces
								Limpiar Pantalla;
								Mostrar "opcion invalida, presione enter para volver al menu";
								Esperar Tecla;
							FinSi
						Mientras Que opcion2<0 o opcion2>2
						
						segun opcion2 Hacer
							caso 1:
								Limpiar Pantalla;
								Mostrar "opcion 1";
								Esperar Tecla;
							caso 2:
								Limpiar Pantalla;
								Mostrar "opcion 2";
								Esperar Tecla;
							caso 0:
							De Otro Modo:
								Mostrar "no deberias estar leyendo esto, halgo ha salido mal";
						FinSegun
					Mientras Que opcion2<>0
				caso 5:
					Limpiar Pantalla;
					Repetir
						Repetir
							Limpiar Pantalla;
							Mostrar "1. cantidad de turnos por dia";
							Mostrar "2. cantidad de vacunas a aplicar de cada tipo";
							Mostrar "0. volver al menu";
							leer opcion2;
							
							si opcion2<0 o opcion2>2 entonces
								Limpiar Pantalla;
								Mostrar "opcion invalida, presione enter para volver al menu";
								Esperar Tecla;
							FinSi
						Mientras Que opcion2<0 o opcion2>2
						
						segun opcion2 Hacer
							caso 1:
								Limpiar Pantalla;
								Mostrar "opcion 1";
								Esperar Tecla;
							caso 2:
								Limpiar Pantalla;
								Mostrar "opcion 2";
								Esperar Tecla;
							caso 0:
							De Otro Modo:
								Mostrar "no deberias estar leyendo esto, halgo ha salido mal";
						FinSegun
					Mientras Que opcion2<>0
				caso 0:
					Limpiar Pantalla;
					Mostrar "hasta la proxima";
				de otro modo:
					Limpiar Pantalla;
					Mostrar "no deberias estar leyendo esto, halgo ha salido mal";
			FinSegun
		Mientras Que opcion1<>0
FinAlgoritmo
