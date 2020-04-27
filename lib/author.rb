
class Author
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def posts
    Post.all.select { |posts| posts.author == self  }
  end

  def add_post(post)
    post.author = post
  end
end
