require_relative "wagon_sort"

# TODO: Ask the user about students to add to the Wagon.
#       Remember, to read an input from the command line, use:
#       - `gets`:  http://www.ruby-doc.org/core-2.1.2/Kernel.html#method-i-gets
#       - `chomp`: http://www.ruby-doc.org/core-2.1.2/String.html#method-i-chomp

students = []

puts "Type a student name: "

saisie = gets.chomp
students.push(saisie)

  while saisie != ""
    puts "Type another student name (or presse enter to finish"
    saisie = gets.chomp
    if saisie != ""
      students.push(saisie)
    end
  end

  puts "Congratulations! Your Wagon has #{students.count} students:"
  puts "- #{wagon_sort(students)[0...-1].join(", ")} and #{wagon_sort(students)[-1]}"

# TODO: Then call `wagon_sort` method defined in the wagon_sort.rb
#       file and display the sorted student list




