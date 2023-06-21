class Method_example
  #class method defining some example
  def self.example_1
    p " hello you are welcome here "
  end

  def Method_example.example_2
    p "once again we welcome you ====>>> "
  end

  # instance method that are defined in class
  # for using this method we need to create object on this method
  def sample
    p "this language is very easy"
  end
end
Method_example.example_1
Method_example.example_2
obj= Method_example.new
obj.sample