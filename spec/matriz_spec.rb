#Fichero spec

require './lib/matriz.rb'

describe Matrix do
        before :each do
		@ma = Matrix.new(2,2)
		@ma.rellenar([[1,2],[2,3]])        
		@mb = Matrix.new(2,2)
		@mb.rellenar([[2,1],[3,2]])
		
        end
	
        describe "Suma de Matrices" do
                it "Halla la suma" do
                        res = @ma + (@mb)
                        res.mostrar.should eq("[[3,3], [5,5]]")
                end
        end
	
	describe "Resta de Matrices" do
                it "Halla la resta" do
                        res = @m1 - (@m2)
                        res.mostrar.should eq("[[0,0], [0,0]]")
                end
	end
end