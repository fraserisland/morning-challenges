# 2. There is an employee at The Company who needs some code written that will provide them
# with the first 100 numbers of the Fibonacci sequence (no one really knows why the employee
# needs this information but let's do it anyway!).




def nthFibonacci ([])
  until n > 100
   nthFibonacci(n-1)+nthFibonacci(n-2)
 end
end
xn = 0
xn = xn-1 + xn-2.

puts nthFibonacci(2)
