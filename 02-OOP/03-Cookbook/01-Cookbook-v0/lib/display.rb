require_relative 'recipe'
require_relative 'cookbook'

class Display
  def create_recipe
    puts "what recipe do you want to create ?"
    print ">"
    gets.chomp
  end

  def give_a_description
    puts "What's the description ?"
    print ">"
    gets.chomp
  end

  def destroy_recipe
    puts "What recipe you want to delete ?"
    print ">"
    gets.chomp
  end

  def edit_list(recipes)
    puts "Voici la liste des recettes : "
    recipes.each_with_index do |recipe, index|
      puts index
      puts recipe.name
      puts recipe.description
    end
  end
end
