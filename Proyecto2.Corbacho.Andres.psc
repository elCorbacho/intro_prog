Algoritmo sin_titulo
	//DECLARACION DE VARIABLES
	Definir ingreso_percibido, sueldo_bruto, numero_cargas, sueldo_minimo, sueldo_base como numero
	Definir movilizacion, alimentacion como numero 
	Definir asignacion_familiar, monto_asignacion como numero;
	Definir gratificacion, total_gratificacion como numero;
	Definir impuestos, afp, descuento_afp, isapre, descuento_isapre como numero;
	
	ingreso_percibido = sueldo_bruto;
	
	sueldo_minimo = 460000; 
	movilizacion = 35000;  // NO IMPONIBLE
	alimentacion = 40000;  // NO IMPONIBLE
	afp = 0.1;
	isapre = 0.07;
	gratificacion = 0.25; // IMPONIBLE
	
	// - MENSAJE DE BIENVENIDA -  - MENSAJE DE BIENVENIDA -  - MENSAJE DE BIENVENIDA -  - MENSAJE DE BIENVENIDA -  - MENSAJE DE BIENVENIDA - 
	Escribir "-------------------------------------";
	Escribir "Bienvenido a la calculadora de sueldo";
	Escribir "-------------------------------------";
	Escribir " ";
	esperar 1 Segundos;
		
	// - ASIGNACION DE SUELDO BASE -  - ASIGNACION DE SUELDO BASE -  - ASIGNACION DE SUELDO BASE -  - ASIGNACION DE SUELDO BASE -  - ASIGNACION DE SUELDO BASE - 
	Escribir "Ingrese el sueldo base: ";
	Leer sueldo_base;
	Escribir "Su sueldo base es: --> " sueldo_base;
	Esperar 1 Segundos
	
	Mientras sueldo_base < sueldo_minimo hacer;
		Escribir "El sueldo base no puede ser menor al sueldo minimo"
		Escribir "Ingrese el sueldo base: $";
		Leer sueldo_base;
		Escribir "Su sueldo base es: $" sueldo_base;
	FinMientras
	Esperar 1 Segundos
	
	// - ASIGNACION DE CARGAS -  - ASIGNACION DE CARGAS -  - ASIGNACION DE CARGAS -  - ASIGNACION DE CARGAS -  - ASIGNACION DE CARGAS -  - ASIGNACION DE CARGAS - 
	escribir " "
	Escribir "Ingrese su numero de cargas: ";
	Leer numero_cargas;
	Escribir "Sus cargas son --> " numero_cargas;
	
	Mientras numero_cargas < 0 hacer;
		Escribir "Ingreso un numero de cargas valido";
		Leer numero_cargas;
		Escribir "Sus cargas son --> " numero_cargas;
	FinMientras
	Esperar 1 Segundos
	
	// - CALCULO DE ASIGNACION POR CARGAS -  - CALCULO DE ASIGNACION POR CARGAS -  - CALCULO DE ASIGNACION POR CARGAS -  - CALCULO DE ASIGNACION POR CARGAS - 
	si numero_cargas > 0 Entonces;
		si sueldo_base <= 539328 Entonces;
			asignacion_familiar = 20328;
			monto_asignacion = asignacion_familiar * numero_cargas
		FinSi
				
		si sueldo_base > 539328 y sueldo_base <= 787746 Entonces;
			asignacion_familiar = 12475;
			monto_asignacion = asignacion_familiar * numero_cargas
		FinSi
		
		si sueldo_base > 787746 y sueldo_base <= 1228614 Entonces;
			asignacion_familiar = 3942;
			monto_asignacion = asignacion_familiar * numero_cargas
		FinSi
		
		si sueldo_base > 1228614 Entonces;
			asignacion_familiar = 0;
			monto_asignacion = asignacion_familiar * numero_cargas
		FinSi
	FinSi
		
	// - CALCULO DE GRATIFICACION -  - CALCULO DE GRATIFICACION -  - CALCULO DE GRATIFICACION -  - CALCULO DE GRATIFICACION -  - CALCULO DE GRATIFICACION - 
	Escribir " ";
	total_gratificacion = gratificacion * sueldo_base;
	sueldo_base = sueldo_base + total_gratificacion;
	//Escribir "su asignacion por gratificacion es de: $" total_gratificacion;
	//Escribir "su sueldo base mas gratificacion es de: $" sueldo_base;
	//Escribir " ";
	//Esperar 1 Segundos
	
	// - CALCULO DESCUENTOS AFP E ISAPRE -  - CALCULO DESCUENTOS AFP E ISAPRE -  - CALCULO DESCUENTOS AFP E ISAPRE -  - CALCULO DESCUENTOS AFP E ISAPRE - 
	
	//descuento por afp
	descuento_afp = sueldo_base * afp;
	//escribir "El descuento por AFP es de: $" descuento_afp;
	
	//descuento por isapre
	descuento_isapre = sueldo_base * isapre;
	//Escribir "El descuento por ISAPRE es de: $" descuento_isapre;
	//Escribir " "; 
	
	//calculo de sueldo con descuentos
	impuestos = descuento_afp + descuento_isapre
	sueldo_base = sueldo_base - impuestos
	//Escribir "Su sueldo base tras descontar AFP e ISAPRE es de: $" sueldo_base
	Escribir " "
	Esperar 1 Segundos
	
	
	// - CALCULO SUELDO LIQUIDO - - CALCULO SUELDO LIQUIDO - - CALCULO SUELDO LIQUIDO - - CALCULO SUELDO LIQUIDO - - CALCULO SUELDO LIQUIDO - 
	
	sueldo_bruto = sueldo_base + monto_asignacion + movilizacion + alimentacion;
	

	Escribir ""
	Esperar 1 Segundos
	Escribir "-------------------------------------------"
	Escribir "Su sueldo liquido a pagar es de : $" sueldo_bruto;
	Escribir "-------------------------------------------"
	Escribir ""
	Escribir "Detalle imponible"
	Escribir "-----------------"
	Escribir "su asignacion por gratificacion es de: $" total_gratificacion;
	escribir "El descuento por AFP es de: $" descuento_afp;
	Escribir "El descuento por ISAPRE es de: $" descuento_isapre;
	Escribir ""
	Escribir "Detalle adicionales"
	Escribir "-------------------"
	Escribir "Su asignacion familiar corresponde a: $" monto_asignacion;
	Escribir "Por concepto de movilizacion tiene un total de: $" movilizacion;
	Escribir "Por concepto de alimentacion tiene un total de: $" alimentacion;
	
	
	
	
	

FinAlgoritmo
