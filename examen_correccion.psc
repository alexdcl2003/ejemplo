Funcion pregunta_2
	Definir n,i,j Como Entero
	n <- 5
	Para i<-1 Hasta n Hacer
		Para j<-1 Hasta i Hacer
			Escribir '*' Sin Saltar
		FinPara
		Escribir '*'
	FinPara
FinFuncion

Funcion pregunta_3
	Definir a,b,x Como Entero
	a <- 3; b <- 6
	x <- a+a*(a+b)-b*a+(trunc(b/3)-2+a*a MOD 2)
	Escribir x
FinFuncion

Funcion pregunta_4
	Definir n,m,r Como Entero
	n <- 20; m <- 25; r <- 1
	Mientras (r<>0) Hacer
		Escribir 'm= ',m,' n= ',n
		r <- m MOD n
		Si (r=0) Entonces
			Escribir 'm= ',m,' n= ',n
		FinSi
		n <- m
		m <- r
	FinMientras
FinFuncion

Funcion pregunta_5
	Definir s,r,m,d Como Entero
	Definir ca Como Caracter
	ca <- ''
	s <- 0
	r <- 0
	m <- 0
	d <- 0
	Mientras ca<>'f' Hacer
		Escribir 'ingrese caracter y dijiste f para que finalice'
		Leer ca
		Segun ca  Hacer
			'+':
				s <- s+1
			'-':
				r <- r+1
			'*':
				m <- m+1
			'/':
				d <- d+1
		FinSegun
	FinMientras
	Si (s>m) Y (s>r) Y (s>d) Entonces
		ca <- '+'
		Escribir 'el caracter',ca,'tiene mayor repeticiones',s
	SiNo
		Si (r>m) Y (r>s) Y (r>d) Entonces
			ca <- '-'
			Escribir 'el caracter',ca,'tiene mayor repeticiones',r
		SiNo
			Si (m>r) Y (m>s) Y (m>d) Entonces
				ca <- '*'
				Escribir 'el caracter',ca,'tiene mayor repeticiones',m
			SiNo
				Si (d>m) Y (d>s) Y (d>r) Entonces
					ca <- '/'
					Escribir 'el caracter ',ca,' tiene mayor repeticiones ',d
				FinSi
			FinSi
		FinSi
	FinSi
FinFuncion

Funcion pregunta_6
	Definir non Como Caracter
	Definir b,p,e,i Como Real
	b <- 10
	Escribir 'ingrese nombre'
	Leer non
	Escribir 'ingrese en edad'
	Leer e
	Si e<=9 Entonces
		i <- b+b*0.10
		p <- (200-e)/i
	SiNo
		Si e>=18 Entonces
			i <- b+b*0.15
			p <- (200-e)/i
		FinSi
	FinSi
	Escribir 'nombre: ',non
	Escribir 'pulsaciones: ',p
	Escribir 'edad: ',e
FinFuncion

Funcion pregunta_7
	Definir num Como Entero
	Definir cN,cP,numP,numN Como Entero
	Escribir 'Ingrese un numero: '
	Leer num
	cP <- 0
	cN <- 0
	numN <- 0
	numP <- 0
	Mientras num<>0 Hacer
		Si num>=1 Y (num MOD 3=0) Y (num MOD 4=0) Entonces
			cP <- cP+1
			numP <- num
		SiNo
			Si num<=-1 Y (num MOD 3<>0) Y (num MOD 4<>0) Entonces
				cN <- cN+1
				numN <- num
			FinSi
		FinSi
		Leer num
	FinMientras
	Escribir 'Cantidad de números positivos múltiplos de 3 y 4: ',cP
	Escribir 'Cantidad de números negativos no múltiplos de 3 y 4: ',cN
FinFuncion

Algoritmo examen_correccion
	Definir op Como Entero
	Escribir 'ingrese numero de pregunta de 2 a 7:'
	Leer op
	Segun op  Hacer
		2:
			pregunta_2
		3:
			pregunta_3
		4:
			pregunta_4
		5:
			pregunta_5
		6:
			pregunta_6
		7:
			pregunta_7
		De Otro Modo:
			Escribir "no es una de las preguntas "
	FinSegun
FinAlgoritmo
