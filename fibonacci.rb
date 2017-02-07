def fibonacci_iterative(numer)
 a = 0 
 b = 1
 numer.times do 
  temp = a 
  a = b
  b = temp + a 
end
return a


end





p fibonacci_iterative(0)# == 0
p fibonacci_iterative(1) #== 1
p fibonacci_iterative(2)# == 1
p fibonacci_iterative(3)# == 2
p fibonacci_iterative(4)# == 3
p fibonacci_iterative(5) #== 5



