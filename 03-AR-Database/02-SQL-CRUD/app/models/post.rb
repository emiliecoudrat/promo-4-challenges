# You can use a global variable, DB, built as is:
# DB = SQLite3::Database.new(file)

class Post
  # TODO: implement some reader and/or writers
  attr_reader :id, :date, :votes
  attr_accessor :title, :url

  def initialize(options = {})
    # TODO: initialize instance variables from the hash options.
    @id = options[:id]
    @title = options[:title]
    @url = options[:url]
    @date = options[:date] || Time.now
    @votes = options[:votes] || 0
  end

  def upvote
    @votes += 1
    # @votes = @votes + 1
  end

  def save
    if @id.nil?
      DB.execute("INSERT INTO posts (title, url, date, votes)
        VALUES ('#{@title}', '#{@url}', #{@date.to_i}, #{@votes});")
      @id = DB.last_insert_row_id
    else
      DB.execute("UPDATE posts
        SET title = '#{@title}', url = '#{@url}', date = #{@date.to_i}, votes = #{@votes}
        WHERE id = #{@id};")
    end
  end

  def destroy
    DB.execute("DELETE FROM posts WHERE id = #{@id};")
  end

  def self.find(id)
    post_infos = DB.execute("SELECT * FROM posts WHERE id = #{id} ;")[0]
    # renvoie un tableau de tableau donc je ne prend que le premier element
    if post_infos.nil?
      nil
    else
      Post.new(id: post_infos[0], title: post_infos[1],
      url: post_infos[2], date: Time.at(post_infos[3]), votes: post_infos[4])
    end
  end

  def self.all
    posts = DB.execute("SELECT * FROM posts ;")
    posts_loaded = posts.map do |post|
      Post.new(id: post[0], title: post[1], url: post[2],
        date: Time.at(post[3]), votes: post[4])
    end
    return posts_loaded
  end
  # TODO: implement all the class methods and instance methods
  #       to have a full CRUD support on your Post model
end

# new_post = Post.new({title: "Plaid", url:"http://www.enmodeplaid.com"})
# p new_post.id