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

  def my_all?
    self.each do |e|
      if yield(e) == false || yield(e) == nil
        return false
      end
    end
    true
  end

  def my_count
    count = 0
    if block_given?
      self.each do |e|
        if yield(e) == true
          count += 1
        end
      end
      count
    else
      self.length
    end
  end

  def my_select
    arr = []
    self.each do |e|
      if yield(e) == true
        arr << e
      end
    end
    arr
  end

  def my_any?
    self.each do |e|
      if yield(e) == true
        return true
      end
    end
    false
  end

  def my_inject
    accumulator = 0
    self.each do |e|

      yield(e)
    end
  end

  arr = [1, 1, 2, 3, 5, 8, 13, 21, 34]

  puts arr.my_inject { |sum, number| sum + number }




  # arr.my_each_with_index { |e, i | puts "element = #{e * 2} and index = #{i * 2}" }



  # puts arr.my_count

  # arr.select! do |e|


  # puts arr.my_all? { |element| element > 35 }

  # arr.count

  # arr.my_each { |n| puts n}
  #arr.my_each_with_index { |e, i| puts "#{i}: #{e}" }

end

