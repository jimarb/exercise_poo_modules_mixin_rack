class Vehicle
    def initialize(model, year)
        @model = model
        @year = year
        @start = false
    end
    def engine_start
        @start = true
    end
end

class Car < Vehicle
    @@instances = 0
    def initialize()
        @@instances += 1
    end
    def self.get_instances_number
        @@instances
    end
    def engine_start
        super
        puts 'El motor se ha encendido!'
    end
end

10.times do |x|
    Car.new.engine_start
end

puts "Se han creado #{Car.get_instances_number} automoviles"