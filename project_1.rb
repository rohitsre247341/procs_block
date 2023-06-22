class People
  @@people = []
  attr_accessor :name , :age
  def initialize(name , age = 0)
    @name = name
    @age = age
  end

  def self.all(name)
    s = People.new(name)
    @@people << s 
    p @@people
  end
  def self.create(name,age)
    r = People.new(name,age)
    @@people << r
    p r 
  end

  def self.find_by_name(name)
   p @@people.find {|man| man.name == name }
  end

  def self.oldest
   p @@people.max_by {|s| s.age }
  end

  def self.sum_all
  p @@people.reduce(0) {|sum1 , sum_2| sum1 + sum_2.age }
  end
end
People.create("mohan",34)
People.create("rohan",45)
People.find_by_name("rohit")
People.oldest
People.sum_all