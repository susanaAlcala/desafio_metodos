#Ejercicio 1: El siguiente algoritmo es algo redundante, optimízalo:

def par(x)
    x % 2 == 0
    end
    
    puts par(2)
    puts par(3)
    puts par(4)
    puts par(5)
    
    # Ejercicio 2: El siguiente algoritmo debería mostrar 'sí' o 'no', sin embargo muestra error. Se pide identificar el error y corregirlo:
    #
    def random
      [true, false].sample
    end
    
    20.times do
      if random
        puts 'sí'
      else
        puts 'no'
      end
    end
    
    #Ejercicio 3: Escriba un método llamado check5 que devuelva true cuando se le pase un número mayor a 5 y false en caso contrario.
    
    def check5(num)
      if num >5
        true
      else
        false
      end
    end
    
    puts check5(5) # Debería ser false
    puts check5(6) # Debería ser true
    
    #Ejercicio 4: Crear un método que imprima un saludo. El método debe recibir un parámetro, si ese parámetro es el string "Hola" el método debe imprimir "Hola Mundo".
    
    def saludo(palabra)
      if palabra == "Hola"
        puts "#{palabra} Mundo"
      end
      puts "Ingresa saludo"
      palabra.gets.chomp
    end
    
    
    #Ejercicio 5: Crear un método que reciba como parámetro dos números enteros positivos e imprima los números pares que existen entre esos dos números.
    
    def numero_pares(n1, n2)
    arr = []
      if n1 < n2 && n1 > 0 && n2 > 0
        (n1..n2).each do |n|
          arr.push(n) if n.even?
        end
      end
      arr
    end
    
    puts 'ingrese dos números mayores a cero y el primero debe ser menor'
    puts 'ingrese el primer número'
    num1 = gets.chomp.to_i
    
    puts 'ingrese el segundo número'
    num2 = gets.chomp.to_i
    
    resultado = numero_pares(num1, num2)
    
    puts resultado.empty? ? 'ingresa números correctos' : resultado
    
    #Ejercicio6: Un método puede llamar a otros métodos: Modifica el siguiente código para que al ejecutar un sólo método se imprima:
    
    # *****
    # *****
    # *****
    # *****
    # *****
    
    def draw_line(n)
    '*' * n
    end
    def draw_lines(veces, linea)
      veces.times do
        puts draw_line(linea)
      end
    end
    draw_lines(5, 5)
    
    
    #Ejercicio7: Dado el siguiente string y carácter, crear un método que reciba como parámetro el string y el carácter. Luego debe buscar si existe ese caracter dentro del string.
    
    def verificar_caracter(string, char)
      if string.include?(char) ? 'contiene' : 'no contiene' #lo que va antes de "?" siempre es un booleano
        true
      else
        false
      end
    end
    
    cadena = 'Hola Mundo!'
    caracter = 'o'
    
    puts verificar_caracter(cadena, caracter)
    
    
    #Ejercicio8: Construir un arreglo de los nombres de todos sus compañeros y en base a él:
    # 1. Imprimir todos los elementos que excedan más de 5 caracteres.
    # 2. Crear un arreglo nuevo con todos los elementos en minúscula.
    # 3. Crear un método que devuelva un arreglo con la cantidad de caracteres que tiene cada nombre.
    
    
    def cantidad_chars(arr)
      arr.map {|nombre| nombre.length}
    end
    nombres = %w(Matías Rodrigo Brayder Jorge Cristian Diego Fernanda Maribel Gonzalo)
    #La única forma de ingresar algo que está afuera de un método es agregando parametros y meter lo de afuera a través de los parámetros.
    
    #Hay que iterar porque hay que acceder a cada string
    nombres.each do |nombre|
      puts nombre if nombre.length > 5
    end
    puts 'ej 2----'
    #Map siempre recibe un bloque
    nombres_min = nombres.map do |nombre|
      nombre.downcase
    end
    
    puts nombres_min
    
    puts 'ej 3----'
    
    array_cantidad_chars = cantidad_chars nombres
    puts array_cantidad_chars