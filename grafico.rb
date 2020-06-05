
#se hace la solución pidiendo el número de asteriscos, para que sea más general
def chart(array)

    #obtener cantidad de asteriscos (largo del chart)
    puts " Si desea modificar la cantidad de asteriscos por elemento (actualmente 2), ingrese la cantidad de asteriscos por elemento. De lo contrario aprete 'enter'"
    asteriscos = gets.chomp
    if asteriscos == "" || asteriscos.count("a-zA-Z") > 0
        asteriscos = 2
    else
        asteriscos = asteriscos.to_i
    end
    #obtener el máximo 
    n_max= array.max(1)
    largo_chart = n_max[0]
    
    array.each do |x|
        print "|"
        (x*asteriscos).times do
            print "*"
        end
        puts ""
    end
    print ">"
    (largo_chart*asteriscos).times do 
        print "-"
    end
    puts ""
    largo_chart.times do |i|
        (asteriscos-1).times do
            print " "
        end
        print i+1
    end
    puts ""

end

chart([5, 3, 2, 5, 10])

