require './add_comments'
class Photo
  attr_accessor :name, :type, :location

  # all three classes need comments so, mixin!
  include AddComments

  def initialize(name, location, type)
    self.name = name
    self.location = location
    self.type = type
  end

  def to_s
    "'#{@name}' was shot at #{@location} with #{@type} quality"
  end
end

photo = Photo.new("1.jpg", "India", "jpeg")
puts photo
photo.add_comments("haha, niceee!!")
puts "Comments:"
puts photo.comments
