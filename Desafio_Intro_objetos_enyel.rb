class Alumno 
	attr_accessor :name, :calificaciones
	def initialize(name, calificaciones)
		@name = name
		@calificaciones = calificaciones
	end
end

#Calcular el promedio de notas del curso
#Encontrar al alumno que tiene mejor promedio de notas y dar su nombre

estudiantes =  []
estudiantes.push(Alumno.new("Pedro", [3,4,6,7,4]))
estudiantes.push(Alumno.new("Ale", [5,6,4,6,1]))
estudiantes.push(Alumno.new("Fran", [3,6,5,5,7]))
estudiantes.push(Alumno.new("Juan", [7,4,3,6,5]))

puts estudiantes.inspect


def promedio(estudiantes)
	i=0;
	promedio_Alumnos=[]
	nombre_Mejor_Promedio=""
	mejor_Promedio=0
	while(i<estudiantes.length)
		j=0
		promedio=0
		while(j < estudiantes[i].calificaciones.length)
			promedio += estudiantes[i].calificaciones[j]
			j+=1
		end
		promedio = promedio.to_f/estudiantes[i].calificaciones.length
		promedio_Alumnos.push(promedio) 
		if(promedio>mejor_Promedio)
			mejor_Promedio=promedio
			nombre_Mejor_Promedio=estudiantes[i].name
		end
		i+=1
	end
	# puts promediosAlumnos
	#inject(:+) suma de los promediosAlumnos
	promedioCurso = promedio_Alumnos.inject(:+) / promedio_Alumnos.length
	puts "El mejor promedio es de #{nombre_Mejor_Promedio} con nota final #{mejor_Promedio}"
	puts "Promedio del curso #{promedioCurso}"
end	

promedio(estudiantes)
