module Herviboro
    Definir = 'Sólo me alimento de vegetales!'
    def self.definir
        Definir
    end
    def dieta
        "Soy un Herviboro!"
    end
end
class Animal
    def saludar
        "Soy un animal!"
    end
end
class Conejo < Animal 
    include Herviboro
    def initialize(name)
        @name = name
    end
end
conejo = Conejo.new('Bugs Bunny')
conejo.saludar
puts conejo.dieta
Herviboro.definir