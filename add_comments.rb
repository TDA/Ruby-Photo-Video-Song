module AddComments
  def comments
    # if @comments
    #   # already exists, so return it
    #   @comments
    # else
    #   # create new array
    #   @comments = []
    # end
    # shorter and concise
    @comments = @comments || []
  end

  def add_comments(comment)
    comments.push(comment)
  end
end