class Author

  attr_accessor :name, :title

  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    @posts
  end

  def add_post(post)
    @posts << post
    post.author = self
    @@post_count += 1
  end

  def add_post_by_title(string)
    post = Post.new(string)
    add_post(post)
  end

  def self.post_count
    @@post_count
  end

end
