module Test
    def result(nota1, nota2)
        average = (nota1 + nota2) / 2.0
        if average > 4
            puts 'Estudiante aprobado'
        else
            puts 'Estudiante reprobado'
        end

    end
end
module Attendance
    def self.student_quantity
        puts Student.get_student_numbers
    end
end
class Student
    include Test
    include Attendance
    @@quantity = 0
    attr_accessor :nombre, :nota1, :nota2
    def initialize(nombre = 'student_no_name', nota1 = 4, nota2 = 4)
        @@quantity += 1
        @nombre = nombre
        @nota1 = nota1
        @nota2 = nota2
    end
    def self.get_student_numbers
        @@quantity
    end
end

10.times do |x|
    alumno = Student.new("Alumno #{x}", rand(1..10), rand(1..10))
    puts "#{alumno.nombre} NOTAS #{alumno.nota1} #{alumno.nota2} #{alumno.result(alumno.nota1, alumno.nota2)}"
    puts
end

puts Attendance.student_quantity
