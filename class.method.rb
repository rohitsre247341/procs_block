class Dynamical_creating_method
  define_method(:method_1) do 
    puts "hello ruby dynamically method"
  end

  define_method(:method_2) do 
    p " you are welcomed in method #{:method_2} "
  end

  # few examples of class method 
  # sqrt method is a class method because it is called  direcly on Math class
  def square_finding
    p Math.sqrt(25)
  end
  # new method on Array class is also called class method.it is used used to create instances of array 
  def array_making
    s = Array.new
    s[0] = 2
    p s
  end
  # now method in Time class
  def timing_find
    p Time.now
  end

end
obj = Dynamical_creating_method.new
obj.timing_find