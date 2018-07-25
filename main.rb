require_relative 'contact'


puts "initlaizing"
# sleep(10)
# Sleep tells Ruby to wait 10 seconds

clark = Contact.new('Clark', 'Kent', 'clark@dailyplanet.com', 'Goes into the phone booth a lot')
bruce = Contact.new('Bruce', 'Wayne', 'bruce@wayneenterprises.com', "kind of a dark guy")
diana = Contact.new('Diana', 'Prince', 'diana@amazon.com', 'Nothing')
joe = Contact.new('Joe', 'Bloggs', 'anon@anon.com')
# Contact is a method
# Contact.new is a class method
# .new calls upon the initialize

clark.save
bruce.save
diana.save

puts Contact.all.size

person_i_am_looking_for = Contact.find(1001)

# puts diana.full_name
#
# p clark
# p bruce
# p diana
# p joe
