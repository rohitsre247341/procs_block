class Employee
  attr_accessor :name ,:age , :designation , :salary

  def initialize(name,age,designation,salary)
    @name = name
    @age = age
    @designation = designation
    @salary = salary
  end

  def show_details
    p "the given details are the following name: #{@name},age : #{@age}  designation: #{designation} "
    p "salary: #{@salary} "
  end
end

class Ems
  attr_accessor :member

  def initialize
    @member = []
  end

  def member_data(name, age, designation,salary)
    s= Employee.new(name,age,designation,salary)
    @member << s
  end
  
  def see_record
    @member.each do |r|
      p r 
    end
  end

  def employ_listing
    p "Employee's particular"
    p "*********************"
    @member.each do |s|
      p "the name of employee is #{s.name} "
      p "the age of the employee is #{s.age} "
      p "the salary of the employee is #{s.salary} "
      p "the designation of the employee is #{s.designation} "
    end
  end

  def emp_search(name_emp)
    result = @member.select {|d| d.name.upcase == name_emp.upcase  }
    if result.empty?
      p "no result found"
    else
      result.each do |h|
        p "the name of the employee is : #{h.name} "
        p  "the age of the employee is : #{h.age} "
        p  "the designation of the employee is : #{h.designation} "
        p  "the salary of the employee is : #{h.salary} "
      end
    end
  end

  def ave_salary
    sum = 0
    ave_sal = @member.reduce(0) { |sum , current|  sum + current.salary   }
    avera_salary_total = ave_sal/@member.length.to_f
    p "the average salary of employees  is :  #{avera_salary_total} "
  end

  def highest_paid_sal_emp 
    s = @member.max_by { |r|  r.salary }
    p "Details of highest paid salary given below"
    p "name of the empolyee is #{s.name} "
    p "salary is : #{s.salary} "
    p " post is  :#{s.designation} "
    p "age is : #{s.age} "
  end
      
end



s = Ems.new
s.member_data("karam",23,"AE",26000)
s.member_data("hi",34, "AE", 3400)
s.highest_paid_sal_emp
