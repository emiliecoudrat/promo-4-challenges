require_relative 'recipe'
require_relative 'cookbook'

class Display

  def import
    puts "Import recipes for which ingredient ?"
    print ">"
    gets.chomp
  end

  # def ask_user_for_recipe_mark_as_tested
  #   puts "Which recipe do you want to mark ?"

  #   begin
  #     recipe_id = Integer(gets.chomp)
  #     recipe_id - 1
  #   rescue ArgumentError
  #     puts "Ce n'est pas un id correct"
  #     nil
  #   end

  # end

  # def print_mark_recipes(recipes)
  #   puts "Here are the recipes :"
  #   recipes.each_with_index do |recipe, index|
  #     done_recipe = recipe.done ? "[x]" : "[ ]"
  #     puts "#{index + 1} - #{done_recipe} #{recipe.name} #{recipe.description} #{recipe.rating}"
  #   end
  # end

  def get_recipe_details
    puts "which recipe details do you want to print"
    print ">"
    index = gets.chomp.to_i
  end

  def ask_for(something)
    puts "What's the #{something} ?"
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
      done_recipe = recipe.done ? "[x]" : "[ ]"
      puts "#{index + 1} - #{done_recipe} #{recipe.name} #{recipe.description} #{recipe.rating}"
    end
  end

  def print_one_recipe(recipe)
    puts "Name: #{recipe.name}\n=> Description: #{recipe.description}\n=> Rating: #{recipe.rating}"
  end
end
