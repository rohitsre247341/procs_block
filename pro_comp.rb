class Procs_test_1
  def initialize(s)
    @s = s
  end
  def test_1
    proc_test = Proc.new { p "hello ruby language" }
    p " we are here to use ruby's procs in given chapters"
    proc_test.call
  end
  def proc_dynamic_method
    # with proc class
    pro_dy = Proc.new { p "#{@s}, your welcome in this ruby world" }
    pro_2 = Proc.new { p " #{@s}, we will be happy to see you with us " }
    pro_dy.call(@s)
    pro_2.call(@s)
  end
  def pro_method_2
    s = Proc.new {p "thank you for your interest in this programme" }
    s.call
  end
  # with proc method
  def pro_method_example
    pro_method_3 = proc do |r|
      p " hello #{r} we are now using proc method "
    end
    pro_method_3.call(@s)
  end
  def pro_4
    pro_example_new = proc do |s|
      p " i used anothe syntex with proc : #{s} "
    end
    pro_example_new.call(@s)
  end
end

p "please enter your name"
s = gets.chomp  
obj = Procs_test_1.new(s)
obj.pro_4