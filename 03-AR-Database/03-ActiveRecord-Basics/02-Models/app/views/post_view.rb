class PostView
  # TODO: implement some methods here when controller needs to `puts` or `gets`
  def display_posts(posts)
    puts "Voici la liste de tous les postes :"
    posts.each do |post|
      puts "#{post.id} - #{post.name} #{post.url} #{post.votes}"
    end
  end

  def ask_for_name_url_vote
    attributes = {}
    puts "please enter a name"
    print ">"
    attributes[:name] = gets.chomp
    puts "please enter a url"
    print ">"
    attributes[:url] = gets.chomp
    puts "please vote"
    print ">"
    attributes[:votes] = gets.chomp
    return attributes
  end

  def update_name_url
    new_attributes = {}
    puts "Enter the post id you want to edit"
    print ">"
      begin
        search_id = gets.chomp.to_i
      rescue ArgumentError
        puts "Cet id n'existe pas"
      end
    puts "Edit name"
    print ">"
    new_attributes[:name] = gets.chomp
    puts "Edit url"
    print ">"
    new_attributes[:url] = gets.chomp
    return search_id, new_attributes
  end

  def post_to_delete
    puts "Enter the post id you want to delete"
    print ">"
    id_to_delete = gets.chomp.to_i
    return id_to_delete
  end

  def add_vote
    puts "Enter the post id you want to vote for"
    print ">"
    id = gets.chomp.to_i
    return id
  end

end