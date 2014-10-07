require_relative "compute_name"

# TODO: ask for the first name
puts "Enter First Name"
first_name = gets.chomp
# TODO: ask for the middle name
puts "Enter Middle Name"
middle_name = gets.chomp
# TODO: ask for the last name
puts "Enter Last Name"
last_name = gets.chomp
# TODO: Print a greeting to the user with the full name concatenated,
#       something like "Hello, Boris Paillard"
print "Hello, #{first_name} #{middle_name} #{last_name}"

