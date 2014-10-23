require_relative 'controller'

class Router
  def initialize(controller)
    @controller = controller
    @running = true
  end

  def run
    puts "Welcome to the Cookbook!"
    puts "           --           "
    while @running
      display_tasks
      action = gets.chomp.to_i
      print `clear`
      route_action(action)
    end
  end

  def stop
    @running = false
  end

  private

  def route_action(action)
    case action
    when 1 then @controller.web_import
    when 2 then @controller.list
    when 3 then @controller.print_details
    when 4 then @controller.mark_recipe_as_tested
    when 5 then @controller.create
    when 6 then @controller.destroy
    when 7 then stop
    else puts "Please press 1, 2, 3, 4 or 5"
    end
  end

  def display_tasks
    puts ""
    puts "What do you want to do next?"
    puts "1 - Import recipes from marmiton"
    puts "2 - List all recipes"
    puts "3 - See a recipe details"
    puts "4 - Mark a recipe"
    puts "5 - Create a new recipe"
    puts "6 - Destroy a recipe"
    puts "7 - Stop and exit the program"
  end
end