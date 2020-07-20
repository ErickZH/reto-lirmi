// Autor 
// Erick Zarate Hernández
// <zaraterick@outlook.com>
// https://github.com/ErickZH

Proceso seleccionandoNumeros
	Escribir "*** Reto Lirmi ***";
	// Variables
	Definir n, i, arreglo, num, num1, num2, count Como Entero;
	Escribir "Ingresa el tamaño del arreglo:";
	Leer n;
	// Validar n
	Si NO(n >= 2 Y n <= 100)
		Escribir "El tamaño del arreglo no es válido";
	FinSi
	
	Dimension arreglo[n];
	
	// Pedir números
	Para i<-1 Hasta n Con Paso 1 Hacer
		Escribir "Ingresa el ", i , "° número del arreglo";
		Leer num;
		
		Si NO(num > 0 Y num < 100) Entonces
			Escribir "El número ingresado no es válido";
			i <- n;
		Fin Si
		
		arreglo[i-1] <- num;
	Fin Para
	
	// Seleccionar número
	Para i<-1 Hasta n-1 Con Paso 1 Hacer
		num1 <- arreglo[i-i];
		num2 <- arreglo[i];
		
		Si (num1 - num2) <= 1 Entonces
			count <- count + 1;
		FinSi
	Fin Para
	
	Escribir "Número máximo de enteros que puede elegir: ", count;
FinProceso
