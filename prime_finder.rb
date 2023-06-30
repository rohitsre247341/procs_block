class Prime_are_not
  def initialize
    @num = 100
  end
  def execute_prime
    s = false
    (2..@num-1).each do |i|
      if @num % i == 0
        s = true
      end
    end
    if s  
      p "the given number : #{@num} is not prime number "
    else
      p "the given number : #{@num} is prime number"
    end
  end

  def execute_triagle_stars(deep)
    for i in 0..deep
      for x in 0..i    
        print "*"  
      end
      puts 
    end 
  end

  def check_prime(num)
    (2..num-1).each do |s|
     return false if num % s == 0
    end
     return true
   end


   def execute_list
    arr = []
    (2..@num).each do |s|
      arr << s if check_prime(s)
    end
    p arr
  end

end
obj = Prime_are_not.new
obj.execute_list