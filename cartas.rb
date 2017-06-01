class Carta
attr_accessor :pinta ,:numero

	def initialize(numero, pinta)
		@numero = numero
		@pinta = pinta
	end
	
	def mostrar
		puts"#{@numero} de #{@pinta} "
	end

end
numeros = [1,2,3,4,5,6,8,9,10,11,12,13]
pintas = ["Corazon","Diamante","Trebol","Picas"]
carta1 = Carta.new(numeros.sample, pintas.sample)
carta1.mostrar
