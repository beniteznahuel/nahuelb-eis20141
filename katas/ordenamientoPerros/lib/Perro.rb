class Perro
 attr_accessor :edad, :peso, :color
	def initialize(color, edad, peso)
		@color = color
		@edad = edad
		@peso = peso
	end

	def <=>(unPerro)
		if @edad == unPerro.edad
			compararPorPeso(unPerro)
		elsif @edad > unPerro.edad
			-1
		else
			1
		end
	end

	def compararPorPeso(unPerro)
		if @peso == unPerro.peso
			compararPorColor(unPerro)
		elsif @peso > unPerro.peso
			-1
		else
			1
		end
	end
	
	def compararPorColor(unPerro)
		if @color == unPerro.color
			0
		elsif @color == "blanco"
			1
		elsif @color == "gris"
			-1
		elsif unPerro.color == "blanco"
			-1
		elsif unPerro.color == "gris"
			1
		elsif @color == "negro" && unPerro.color == "marron"
			1
		else
			-1
		end		 
	end
end
