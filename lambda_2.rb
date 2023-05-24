class Lambda_class
  def lambda_method(d,number)
    p d.call(number)
  end
end
# s lambda is used for doubling the number
# s_triple is used for triplling the number
s = lambda { |s| s*2}
s_triple = lambda {|s|  s*3}
obj = Lambda_class.new
obj.lambda_method(s,3)
obj.lambda_method(s_triple,3)
  