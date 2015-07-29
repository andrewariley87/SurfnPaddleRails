require 'test_helper'

class AuthorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "an author should have posts" do
  post = Post.create(:title => "d", :body => "e", :summary => "f")
  author = Author.create(:name => "yyy")
  author.posts << post
  assert author.posts.count == 1, "Author has no posts."
  end

  test "an author should have name" do
  author = Author.create(:name => "yyy")
  assert author.name, "Author has no name"
  end
end
