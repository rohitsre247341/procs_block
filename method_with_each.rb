class Sample_1
  @@s = ["hello","hi","say","welcome"]
  # method using map.with_index method
  def method_test
      @@s.map.with_index do  |element , index |
          puts "article is #{element}  and their respective values is #{index}"
      end
  end
  # method using each.with_index method
  def method_with_each
      @@s.each.with_index do  |element , index |
          puts "article is #{element}  and their respective values is #{index}"
      end
  end
  # method using collect.with_index method
  def method_with_collect
      @@s.collect.with_index do  |element , index |
          puts "article is #{element}  and their respective values is #{index}"
      end
  end
end

obj = Sample_1.new
obj.method_with_collect
