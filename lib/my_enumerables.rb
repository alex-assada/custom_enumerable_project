module Enumerable
  # Your code goes here
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here


  def my_each
    self.each do |e|
      yield(e)
    end
  end

  def my_each_with_index
    i = 0
    self.each do |e|
      yield(e, i)
      i += 1
    end
  end


  arr2 = []
  arr = [1, 1, 2, 3, 5, 8, 13, 21, 34]
  arr.my_each_with_index { |e, i | puts "element = #{e * 2} and index = #{i * 2}" }




  #arr.my_each { |n| puts n}
  #arr.my_each_with_index { |e, i| puts "#{i}: #{e}" }

end

