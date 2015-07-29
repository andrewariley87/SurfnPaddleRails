require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "a post should have an author" do
  post = Post.create(:title => "d", :body => "e", :summary => "f")
  author = Author.create(:name => "yyy")
  author.posts << post
  assert post.author, "Post does not have an author."
  end

  test "a post should have a title" do
  post = Post.create(:title => "d", :body => "e", :summary => "f")
  assert post.title, "Post does not have a title."
  end

  test "a post should have a body" do
  post = Post.create(:title => "d", :summary => "f")
  assert_not post.body, "Post has body."
  end

  test "an author should have posts" do
  post = Post.create(:title => "d", :body => "e", :summary => "f")
  assert post.summary, "Post does not have summary."
  end
end
