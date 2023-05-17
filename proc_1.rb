# examples of procs 
  def proc_example
    s = 10 ; d = 9
    proc_example = proc do |a,b|
    puts "the sum of two numbers is #{a+b} "
    end
    proc_example.call(s,d)
  end

  def proc_2
    proc_1 =  Proc.new  do |proc_ex|
    puts "the name of the student is #{proc_ex} "
    end
    proc_1.call("neha")
    proc_1.call("Rohan")
  end

  def proc_method
    proc_4 = Proc.new { |s|  puts "hello procs method #{s} " }
    proc_4.call("sohan")
  end
proc_method

def selecting_num
  numbers = [1, 2, 3, 4, 5, 6]
  even_numbers = proc { |n| n.even? }
  filtered_numbers = numbers.select(&even_numbers)
  puts filtered_numbers
end
selecting_num
