#Fichero spec

require './lib/matriz.rb'

describe Matrix do
        before :each do
		@ma = Matrix.new(2,2)
		@ma.rellenar([[1,2],[2,3]])        
		@mb = Matrix.new(2,2)
		@mb.rellenar([[2,1],[3,2]])
		
        end
	
        describe "Suma Matriz " do
                it "Suma" do
			  
                        (@ma + @mb).mostrar.should eq("   3 3 \n   5 5 \n ")
                end
        end
	
	describe "Resta Matriz" do
                it "Resta" do
                        (@ma - @mb).mostrar.should eq("   -1 1 \n   -1 1 \n ")
                end
	end
end