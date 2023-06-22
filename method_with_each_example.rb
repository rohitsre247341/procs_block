class Sample

  @@a = ["mohan","sohan","rohan","karan"]
  @@b=  [2,7,5,6,4,3,5,7]
  
  def element_with_index

    @@a.each_with_index do |r , index|
      puts "name is #{r} and its index is #{index} "
    end

  end

  def element_with_index_2

    @@b.each_with_index do |r,index|
      puts "value is #{r} and its index is #{index} "
    end

  end

end
Sample.new.element_with_index_2
