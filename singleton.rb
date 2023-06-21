class Sample
  def car 
    p "welcome"
  end
end
obj = Sample.new

class << obj
  def hello
    p "helll"
  end
end

obj.car
obj.hello