class Lambda_new

  def lambda_example
    lambda_01 = lambda { p "hello" }
    lambda_example.call
  end
  # we can call lambda function with many method like lambda_example.===,lambda_example.(),
  #lambda_example.[] , lambda_example.call
  def lambda_argument
   # we can declare default argument
   lambda_2 = lambda { |name = "rohan"|   puts " hello "+ name  }
   lambda_2.call("mohan")
  end

end

obj = Lambda_new.new
obj.lambda_argument