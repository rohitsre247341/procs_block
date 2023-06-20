class MyClass
  def self.create_method(name)
    define_method(name) do
      puts "Hello, #{name}!"
    end
  end
end

MyClass.create_method("greet")
MyClass.new.greet
