
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

  def add_post_by_title(title)
    post = Post.new(title)
    add_post(title)
  end

  def self.post_count
    Post.all.length
  end
end
