#!/bin/sh

x=0
y=7

while [ $x -le $y ];
do


echo "1)Pedir un numero entero y mostrar esa cantidad de elementos de la sucesion de Fibonacci."
echo "2)Pedir un numero entero y mostrar por pantalla ese numero en forma invertida."
echo "3)Pedir una cadena de caracteres y evaluar si es palindromo o no."
echo "4)Pedir el path a un archivo de texto y mostrar por pantalla la cantidad de lineas que tiene."
echo "5)Pedir el ingreso de 5 numeros enteros y mostrarlos por pantalla en forma ordenada."
echo "6)Pedir el path a un directorio y mostrar por pantalla cuantos archivos de cada tipo contiene."
echo "7)Salir (Saludando al usuario que ejecuto el programa)."


read x

case $x in

        1)
#        ps ax| wc -l
F=0
echo "ingrese un numero entero"

read F
# Program for Fibonacci 
# Series 
   
# Static input fo N 

  :
# First Number of the 
# Fibonacci Series 
a=0 
  
# Second Number of the 
# Fibonacci Series 
b=1  
   
echo "The Fibonacci series is : "
   
for i in `seq 1 $F`; 
do
    echo -n "$a "
    fn=$((a + b)) 
    a=$b 
    b=$fn 
done
	echo "      "
	echo "    "
        echo "Seleccione una opción "
	 ;;
        2)
        inv=0
	echo "ingrese un numero entero"
	read inv
	#inv=inv |rev	
	echo $inv | rev

	echo "  "
	echo "  "

	;;
 	3)
	echo "Introduzca una frase, palabra o número para verificar si es palindromo o capicua"
read VAR

# Configuro tamaño real de la variable a evaluar
CAPTAM=$(echo $VAR | wc -c)     
TAM=$(($CAPTAM-1))              
STR=$VAR

# Quito los espacios si existe una frase con espacios
for j in $(seq 1 1 $TAM)
do
        CONCAT=$CONCAT$(echo $VAR | cut -f$j -d" ")
done

# Vuelvo a configurar el tamaño real
CAPTAM1=$(echo $CONCAT | wc -c) 
TAM1=$(($CAPTAM1-1))

# Divido la lectura hacia delante y hacia atrás de la frase, palabra o número 
# en dos variables para luego compararlas
for i in $(seq 1 1 $TAM1)
do
        ESP=$ESP$(echo $CONCAT | cut -c $TAM1)
        FRENTE=$FRENTE$(echo $CONCAT | cut -c $i)
        TAM1=$(($TAM1-1))
done

# Comparo las dos variables
if [ "$ESP" != "$FRENTE" ]; then
        echo "No es palindromo o capicua"
        exit 0
fi

echo "Si es palindromo o capicua"

#exit 0	
 	;; 



	4)
	 echo "Ingreses un path de un archivo de texto"
	read path
	wc -l "$path"
        ;;

	5)

#!/bin/bash
echo "Dime un numero"
read numero1
echo "Dime otro numero"
read numero2
echo "Dime el otro numero"
read numero3
echo "Dime el otro numero"
read numero4
echo "Dime el ultimo numero"
read numero5


echo "numeros ordenados"
# Ahora hacemos un 'echo' con cada uno de los números en una línea diferente y aplicamos el comando 'sort' con un pipe así:
echo  "${numero1}\n${numero2}\n${numero3}\n${numero4}\n${numero5}" | sort -n # la '-n' es para que ordene números, aunque sin ella también lo hace.

;;
	6)
	echo "ingrese un path"
	read path1
	ls -l $path1
	;;


	7)
	echo "Adios"
	exit 0

esac
done
                     
