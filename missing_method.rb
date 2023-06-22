class Vehicle
  def car 
    p "it costs about 4 lakh"
    p "it's a vehicle that most indians love"
  end

  def truck
    p "it's used to transport the matters from one place to other place"
    p " it costs about 2million rupees"
  end

  def motor_cycle
    p "it's a two wheeler vehicle "
    p "its a vehicle that is found in every home "
    p "it costs about 80 k rupees"
  end
  
  def method_missing(method_name) 
    p "no valid method that you just typed ==>> #{method_name} "
  end
end

obj = Vehicle.new.aeroplane