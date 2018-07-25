names_list = ["billy", "sarah", "chihigh"]

# def hello(array_of_names)
#   puts "Who... Who are- you??"
#   your_name = gets.chomp.downcase
#
#   array_of_names.each do |name|
#     if your_name !! name
#       return puts "Who goes there"
#     elsif your_name = name
#       return puts "Hello #{name}!"
#     end
#   end
# end
#
# p hello(names)


def hello(array_of_names)
  puts "What's your name?"


  print "Type your name... "
  user_input = gets.chomp.downcase

  array_of_names.each do |list_of_names|
    if user_input == list_of_names
      return puts "Hello #{list_of_names}!"
    else
      return puts "Who goes there?"
    end
  end
end

hello(names_list)
