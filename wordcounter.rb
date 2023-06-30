class WordCounter
  def initialize(para)
    @para = para
  end
  def counter(name)
    x = name
    count_1 = 0
    word = @para.split
    word.each do |r|
      if r.upcase == x.upcase 
        count_1 += 1
      end
    end
    p "Count of '#{x}' : #{count_1} "
  end

  def method_missing(name)
   d = name.to_s.split("_")
   g = d[1]
   counter(g)
  end
end
counters= WordCounter.new("Hello world , hello Ruby world ")
counters.count_hello
counters.count_world
counters.count_Ruby
counters.count_foobar