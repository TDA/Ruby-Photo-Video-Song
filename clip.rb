require './add_comments'

class Clip
  # superclass for video and song,
  # both need play method so
  attr_accessor :play, :name
  include AddComments
  def initialize(name)
    # using the attr writers
    self.play = false
    self.name = name
  end

  def playpause
    if @play
      @play = false
      puts "Paused #{@name}"
    else
      @play = true
      puts "Playing #{@name}"
    end
  end

end