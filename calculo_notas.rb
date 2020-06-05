notas = File.open('./notas.data').read
notas = notas.split("\n")


def nota_mas_alta(array_student)
    #divido el contenido dentro del arreglo
    array_student = array_student.split(",")
    #se eliminan los datos con letras (para sacar el nombre y otros errores)
    array_notas = array_student.reject { |elem| elem.count("a-zA-Z") > 0}
    #con max(1) obtengo el primer número más alto
    mas_alta = array_notas.max(1)
    #para que quede como un número, no como arreglo
    mas_alta.join('')
end

#Ejemplos
puts nota_mas_alta(notas[0])
puts nota_mas_alta(notas[1])
