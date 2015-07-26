class HomeController < ApplicationController

  def index
    @posts = Post.all
    @ordered_posts = @posts.sort_by {|post| post.created_at}.reverse
    @post = @ordered_posts.first
  end

  def show
    @linked_post = Post.find(params[:id].to_i)
  end

end
