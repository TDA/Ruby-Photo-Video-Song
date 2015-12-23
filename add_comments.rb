module AddComments
  def comments
    if @comments
      # already exists, so return it
      @comments
    else
      # create new array
      @comments = []
    end
  end

  def add_comments(comment)
    comments.push(comment)
  end
end