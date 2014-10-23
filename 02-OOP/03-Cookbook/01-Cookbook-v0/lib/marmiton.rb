# require 'nokogiri'
# doc = Nokogiri::HTML(File.open('marmiton.html'))

# doc.search('.m_search_result').each do |element|
#   puts "#{element.search('.m_search_titre_recette > a').inner_text}"
#   puts "Rating : #{element.search('.etoile1').size} / 5}"
# end


require 'nokogiri'
require 'open-uri'


puts "quel ingredient ?"
ingredient = gets.chomp

url = "http://www.marmiton.org/recettes/recherche.aspx?s=#{ingredient}&type=all"

doc = Nokogiri::HTML(open(url), nil, 'utf-8')
doc.css('.m_contenu_resultat').each do |element|
  puts element.search('.m_titre_resultat > a').inner_text
  puts "Rating : #{element.search('.m_recette_note1').size} / 5"
  puts "Description: #{element.search('.m_texte_resultat').inner_text[0..150]}"
  puts "Prep time : #{element.search('.m_detail_time div:first-child').inner_text}"
  puts "Cook time : #{element.search('.m_detail_time div:nth-child(2)').inner_text}"
  puts "Nber of votes : #{element.search('.m_note_resultat').inner_text}"
end
