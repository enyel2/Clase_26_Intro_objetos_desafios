class MiPerro
	def initialize(name)
		@name = name
	end

	def speak()
	puts "#{@name} dice guauuu"	
	end
end

perro = MiPerro.new("fido")
perro.speak

