# Define a method that accepts a list of numbers as an argument and returns the sum of the odd numbers in the list.

  def odd_numbers(array)
    # counter = 0
# Setting variable for instance
    # array.each do |check_number|
# Each do goes through the array
      # if check_number.odd?
# Checks number value, if odd do following line
    #     counter += check_number
    #   end
    # end
    # return counter
# Prints out the sum
  array.find_all {|check_number| check_number % 2 == 1}.reduce(:+)
# https://ruby-doc.org/core-2.2.3/Enumerable.html#method-i-reduce
  end

list = [0, 1, 2, 3, 4, 5, 6 ,7, 8 ,9, 10]


# Test it to make sure it works.
p odd_numbers(list)

# p numbers(5...8)
# # 5 + 7 = 12
#
# p numbers(1...5)
# # 9
