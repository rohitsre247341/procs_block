class Sample
  attr_accessor :digit
  def initialize
    @digit = 12
  end
  #  method to access value of a instance variable and works like getter method in ruby
  def show
    p @digit
  end
  # a method which is used to modify the value of instance variable and it works like setter method
  def setter_1(value)
    @digit = value
  end
end
obj = Sample.new
obj.show # by using explicitly defined method
obj.setter_1(788) # by using explicitly defined method
p obj.digit       # by attr_accessor method
obj.digit = 34    # by attr_accessor method
p obj.digit


