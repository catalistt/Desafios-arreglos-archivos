file = File.open('./ventas_base.db').read
file = file.split(',')

file = file.map!{|num| num.to_f}

#OPCIÓN 1 - SEGÚN LO VISTO EN CLASES
def forecast(sales, p_variation, first_month, last_month)
    i_start = first_month - 1
    i_end = last_month  - 1
    sum_extra= sales[i_start..i_end].sum

    aumento = sum_extra * (1+p_variation/100.0)  
end

data = []

data.push(forecast(file, 10, 3, 6))
data.push(forecast(file, 20, 7, 12))
data_line = data.join("\n")

File.write('./resultados.data', data_line)

#OPCIÓN 2
#ESTE SERÍA EL MÉTODO CON LO QUE ENTENDÍ DEL PROBLEMA, NO LO QUE VIMOS EN CLASES

def forecast2(sales, p_variation, first_month, last_month)
    #primero calculo las ventas totales sin aumento
    suma_total = sales.inject(0){|sum, elem| sum += elem}

    #luego, calculo lo "extra" que se vendería
    i_start = first_month - 1
    i_end = last_month  - 1
    sum_extra= sales[i_start..i_end].sum

    #aquí solo calculo el aumento, no el mes más el aumento
    aumento = sum_extra * (p_variation/100.0)  

    #se suma lo extra con las ventas normales
    aumento + suma_total
end
