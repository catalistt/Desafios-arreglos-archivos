#Se asume que se pide un arreglo con todas las notas máximas
#Se asume que se le entrega un arreglo con varios arreglos en su interior

notas = File.open('./notas.data').read
notas = notas.split("\n") 

#Se agrega un método auxiliar (el que se hizo en calculo_notas1.rb)
def nota_mas_alta(array_student)
    array_student = array_student.split(",")
    array_notas = array_student.reject { |elem| elem.count("a-zA-Z") > 0}
    mas_alta = array_notas.max(1)
    mas_alta.join('')
end

#Método solicitado
def notas_mas_alta(array)
    notas_max = []
    n = array.count
    n.times do |i|
        este_alumno = nota_mas_alta(array[i])
        notas_max.push este_alumno
    end
    notas_max
end

print notas_mas_alta(notas)
