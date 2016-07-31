class Post

  def initialize(post)
    @post = post
  end

  def author
    @author
  end

  def author=(author)
    @author = author
  end

  def title
    @post
  end

  def author_name
    if author == nil
      nil
    else
      author.name
    end
  end

end