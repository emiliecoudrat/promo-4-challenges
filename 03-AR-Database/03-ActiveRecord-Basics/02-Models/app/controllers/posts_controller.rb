require_relative "../views/post_view.rb"
require_relative "../models/post.rb"

class PostsController
  def initialize
    @view = PostView.new
  end

  def index
    # DO NOT WRITE SQL QUERIES
    # TODO: gather all posts from the database
    # TODO: give them to the view to be printed
    post = Post.all
    @view.display_posts(post)
  end

  def create
    # DO NOT WRITE SQL QUERIES
    # TODO: create a post
    attributes = @view.ask_for_name_url_vote
    new_post = Post.new(attributes)
    new_post.save
  end

  def update
    # DO NOT WRITE SQL QUERIES
    # TODO: update a post
    search_id, new_attributes = @view.update_name_url
    find_post = Post.find(search_id)
    find_post.name = new_attributes[:name]
    find_post.url = new_attributes[:url]
    find_post.save
  end

  def destroy
    # DO NOT WRITE SQL QUERIES
    # TODO: destroy a post
    id_to_delete = @view.post_to_delete
    find_post = Post.find(id_to_delete)
    find_post.destroy
  end

  def upvote
    # DO NOT WRITE SQL QUERIES
    # TODO: increment the `votes` column for a post
    id = @view.add_vote
    post_vote = Post.find(id)
    post_vote.votes += 1
    post_vote.save
    # find_post = Post.find(id_to_vote)
  end
end