class Author
@@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def instance_variable_get(instance_var)
    if instance_var == :@posts
      @posts
    elsif instance_var == :@@post_count
      self.post_count
    end
  end

  def name
    @name
  end

  def posts
    @posts
  end

  def add_post(posts)
    @@post_count += 1
    self.posts << posts
    posts.author=(self)
  end

  def add_post_by_title(post)
    @@post_count += 1
    new_post = Post.new(post)
    new_post.author=(self)
    self.posts << new_post

  end

  def self.post_count
    @@post_count

  end


end

