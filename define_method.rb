class MyClass
  def greet(name)
    puts "Hello #{name}!"
  end

  define_method(:say_bye) do |nam|
    puts "Goodbye #{nam}!"
  end
end

my_object = MyClass.new
my_object.greet("mohan")
my_object.say_bye("mohan")
