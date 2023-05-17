# some method for using methods

def welcome_message_print
  p "welcome to all"
  yield
end
welcome_message_print {p "i'm here to welcome you"}

def introduction
  p "please introduce you "
  yield
  p "thank you"
end
introduction  {  p "my name is AA " }
# we can pass any argument in 
def yield_use
  yield 1
  yield 2
  yield 3
end

yield_use { |s| puts s * 2 }
# to check whether a block is given or not
def _no_block_given_method
  return "no block given here" unless block_given?
  yield
end

p _no_block_given_method
