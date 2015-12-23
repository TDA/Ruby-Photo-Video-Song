require './Clip'

class Video < Clip
  attr_writer :resolution

  def resolution
    "Height : #{@resolution[:height]}, Width : #{@resolution[:width]}"
  end

  def initialize(name, height: 720, width: 1280)
    super(name)
    self.resolution = {:height => height, :width => width}
  end

  def to_s
    # call this with self.resolution, else it calls @resolution.to_s
    "This is #{@name} with resolution #{self.resolution}"
  end

end

video = Video.new("Tamil Padam", height: 720, width: 1280)
puts video

video.add_comments("wow, niceee!!")
video.add_comments("this is so cooool!!")
puts "Comments:"
puts video.comments
