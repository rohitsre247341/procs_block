class Sports
  def initialize(name)
    @name = name
  end
  def self.sport(name)
    define_method(:same) do 
      p "you are welcomed in #{name} and we hope you enjoy it "
    end
  end

  def self.sport_method_2(play)
    define_method(:same_2) do
      p "you are again welcomed in another sport named #{play} "
    end
  end

end
sport_1 = Sports.new("cricket")
Sports.sport("cricket")
sport_1.same
Sports.sport_method_2("hocky")
sport_1.same_2

