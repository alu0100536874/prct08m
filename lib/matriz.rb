#!/usr/bin/ruby


class Matrix
attr_reader:m, :n, :val
  
 def initialize(m,n)
   @m = m
   @n = n
   @matrix = Array.new(m){Array.new(n){0}}
 end
    
 def rellenar (m,n,val)
   for i in 0...@m
     for j in 0...@n
     @matrix[i][j]= val[i][j] 
     end
   end
 end
 
 def mostrar (m,n)
   for i in 0...@m
     for j in 0...@n
     puts @matrix[i][j]  
     end
   end
 end
 
end
 
 m = Matrix.new(2,2)
 m.rellenar(2,2,[[1,2],[2,3]])
 m.mostrar(2,2)
 
   
