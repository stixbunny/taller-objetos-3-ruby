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
  def initialize(model, year)
    super
    @@instances +=1
  end
  def self.instances_q()
    return @@instances
  end
  def engine_start()
    puts "El motor se ha encendido!"
  end
end
10.times do
  Car.new("Camaro", 1969)
end
puts "Se instanciaron #{Car.instances_q} autos :D"
