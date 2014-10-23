require 'nokogiri'
require 'open-uri'
require_relative 'recipe'
require_relative 'display'


class Controller
  attr_reader :cookbook

  def initialize(cookbook)
    @cookbook = cookbook
    @display = Display.new
  end

  def web_import
    ingredient = @display.import

    # Stratégie 1
    # pour chacune de recettes récupérées sur marmiton (on aura son nom et sa desc)
    # recipe = Recipe.new(nom, desc)
    # => @cookbook.add_recipe(recipe)

    url = "http://www.marmiton.org/recettes/recherche.aspx?s=#{ingredient}&type=all"

    doc = Nokogiri::HTML(open(url), nil, 'utf-8')
    doc.css('.m_contenu_resultat').each do |element|
      name =  element.search('.m_titre_resultat > a').inner_text
      rating = element.search('.m_recette_note1').size
      desc = element.search('.m_texte_resultat').inner_text[0..150]

      new_recipe = Recipe.new(name, desc, rating)
      @cookbook.add_recipe(new_recipe)
    end
      # puts "Prep time : #{element.search('.m_detail_time div:first-child').inner_text}"
      # puts "Cook time : #{element.search('.m_detail_time div:nth-child(2)').inner_text}"
      # puts "Nber of votes : #{element.search('.m_note_resultat').inner_text}"

    # Stratégie 2
    # @cookbook.import_recipes_for(ingredient

  end

  def list
    @display.edit_list(@cookbook.recipes)
  end

  def create
    name = @display.ask_for("name")
    description = @display.ask_for("description")
    rating = @display.ask_for("rating").to_i

    new_recipe = Recipe.new(name, description, rating)
    @cookbook.add_recipe(new_recipe)
  end

  def destroy
    index = @display.destroy_recipe
    @cookbook.remove_recipe(index.to_i)
  end

  def mark_recipe_as_tested
    index = @display.ask_for("recipe index")
    @cookbook.fetch_recipe(index.to_i).mark_as_tested
  end

  def print_details
    index = @display.get_recipe_details
    if index
      recipe = @cookbook.recipes[index.to_i]
      @display.print_one_recipe(recipe)
    else
      puts "Get a proper id"
    end
  end

end