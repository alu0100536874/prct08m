#Fichero spec

require './lib/matriz.rb'

describe Matrix do
        before :each do
		@ma = Matrix.new(2,2)
		frac1 = Fraccion.new(1,4)
		frac2 = Fraccion.new(1,2)
		frac3 = Fraccion.new(2,3)
		frac4 = Fraccion.new(1,5)
		frac5 = Fraccion.new(3,4)
		frac6 = Fraccion.new(1,2)
		frac7 = Fraccion.new(2,6)
		frac8 = Fraccion.new(8,10)
	
		@ma.rellenar([[frac1,frac2],[frac3,frac4]])        
		@mb = Matrix.new(2,2)
		@mb.rellenar([[frac5,frac6],[frac7,frac8]])
		
        end
	
        describe "Suma Matriz " do
                it "Suma" do
			  
                        (@ma + @mb).mostrar.should eq("   1 1 \n   1 1 \n ")
                end
        end
	
	describe "Resta Matriz" do
                it "Resta" do
                        (@ma - @mb).mostrar.should eq("   -2/4 0 \n   2/6 -6/10 \n ")
                end
	end
end

#prueba guard