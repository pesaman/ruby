#metodo para tablero de ajedrez
def chessboard
  board = Array.new(8){Array.new(8)} #array de 8 x 8
  fich = [["T"], ["C"], ["A"], ["r"], ["R"], ["P"]] #Nested array con las piezas
  
  #ciclo para armar las filas
  for i in 0..7 
    count = 0 
    #ciclo para armar columnas
    for j in 0..7

      if i == 0 #comparacion de la fila = 0
        if count <= 4 #comparacion para crear fichas siempre que sea <= 4
          board[i][j] = fich[count][0] + "-B" #cambiamos poscion de fichas por counter
        else #si es mayor a 4 ya no hay fichas
          board[i][j] = fich[count % 2 + 1][0] + "-B" #modulo de counter y se suma 1 para tener la mitad
          board[i][j] = fich[0][0] + "-B" if j == 7 #cuando la columna sea = 7, en esa poscion se pone [0][0]
        end

        count += 1

      elsif i == 1 #compara la fila = 1
        board[i][j] = fich[5][0] + "-B" #acomoda los peones blancos
      elsif i == 6 #si la fila es = 6 
        board[i][j] = fich[5][0] + "-N" #acomoda los peones negros
      elsif i == 7 #si la fila es = 7
        if count <= 4
          board[i][j] = fich[count][0] + "-B" #si es menor a 4 pone sucesivamente las fichas
        else
          board[i][j] = fich[count % 2 + 1][0] + "-N" #modulo de counter mas 1 
          board[i][j] = fich[0][0] + "-B" if j == 7 #pone la torre en la ultima posicion
        end

        count += 1

      else #todo lo que sobre lo rellena con lo que querramos
        board[i][j] = "| |"
      end
    end
  end
  board#regresa el nested array tab ya lleno
end

def show_board(tablero) #tablero ordenado
  for h in 0..7 #ciclo para mostrar tablero
    p tablero[h] #muestra filas y renglones
  end
end

tabla = chessboard #regresa el parametro de crear_tablero y lo pone en tabla
show_board(tabla) #muestra el tablero ya coin el metodo para el tablero lleno
