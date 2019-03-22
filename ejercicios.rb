#Ejercicio 1

class Anything
attr_reader :a
def foo
@a = 5
end
def bar
@a += 1
end
end
any = Anything.new
puts any.foo
puts any.bar
puts any.a

#Ejercicio 2

class Car
attr_reader :model, :year
  def initialize(model, year)
    @model = model
    @year = year
  end
end
car = Car.new('Camaro', 2016)
puts "Mi auto favorito es un #{car.model} del año #{car.year}!"

#Ejericio 3

class Store
attr_reader :name
def initialize(name)
@name = name
end
end
store = Store.new('Tienda 1')
puts store.name

#Ejercicio 4

class Dog
def initialize(propiedades)
  @nombre = propiedades[:nombre]
  @raza = propiedades[:raza]
  @color = propiedades[:color]
end

def ladrar()
  puts ("#{@nombre} esta ladrando!")
end

end

perro = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}

Dog.new(perro).ladrar

#Ejercicio 5

class Morseable
def initialize(number)
@number = number
end
def generate_hash(number)
# Esto es una aberración y debe ser refactorizado!
hash = {
0 => '-----',
1 => '.----',
2 => '..---',
3 => '...--',
4 => '....-',
5 => '.....',
6 => '-....',
7 => '--...',
8 => '---..',
9 => '----.'
}
hash[number]
end
def to_morse
generate_hash(@number)
end
end
m = Morseable.new(3)
print m.to_morse

#Ejercicio 6

class Student
attr_accessor :name
def initialize()
@name = name
end
end
names = %w(Alicia Javier Camila Francisco Pablo Josefina)

students = []

names.each_with_index do |name, i|
  students.push(Student.new(name, i + 1))
end

grades = students.map { |student| "#{name}: #{grade}" }
