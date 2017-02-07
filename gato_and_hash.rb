# gato=[]# este es mi arreglo vacio 
# contador_o = 0#contador de o vale cero
# contador_x = 0#contador de x vale cero
# for i in 1..9#para i en del 1 al 9
#   random = rand(0..1)#hacemos el metodo rand de 0 y 1
#   if random == 0#si random es cero
#     if contador_o <= 4#si contador es menor o igual a cuatro
#       gato << "O"#manda la letra 'o' 
#       contador_o += 1#incrementamos el contador 
#     else
#       gato << "X"#rrellenalo de x
#       contador_o += 1#contador hasta nueve 
#     end#fin contador 
#   elsif random == 1 #o si random = 1 
#     if contador_x <= 4# si contador es menor o igual a 4
#       gato << "X"#lleca x al arreglo
#       contador_x += 1#contador solo imprime 4 
#     else
#       gato << "O"#y le grega o al final
#     end
#   end
# end
# gato.each_slice(3){|a| p a  }
# #tomamos el arreglo lo iteramos con each y le ponemos el slice con tres columnas las iteramos y imprimimos el valor 


table = [[ "Nombre", "Edad", "Genero","Grupo", "Calificaciones"],
           ["Rodrigo García", 13, "Masculino", "Primero", [8, 7, 7, 9, 8]],
          ["Fernanda Gonzalez", 12, "Femenino", "Tercero", [8, 7, 7, 9, 8]],
          ["Luis Perez", 13, "Masculino", "Primero", [8, 7, 7, 9, 8]],                
          ["Ana Espinosa", 14, "Femenino", "Segundo", [9, 9, 6, 8, 8]],        
          ["Pablo Moran", 11, "Masculino", "Segundo", [7, 8, 9, 9, 8]]]
# #1) estructurar arreglo     
contador = 0
array=[]
# #2) iterar arreglo
for i in 1..5   
  for j in 0..4
   if i  % 5==0
    contador =+ 1
   end
#3) formar hash con:
    jj=Hash[table[0][j], table[i][j]]
      array<<jj
  end
end

#4)insertar cada hash en un arreglo
array



p table == [{"Nombre"=>"Rodrigo García"} 9, 8]}]
# p table[2][1]  == 12
# p table[2][2]  == "Femenino"
# p table[3][3]  == "Primero"
# p table[3][4]  == [8, 7, 7, 9, 8]
# p table[4][4][2]  == 6




