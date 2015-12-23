class Clip
  # superclass for video and song,
  # both need play method so
  attr_accessor :play, :name
  def initialize(play, name)
    # using the attr writers
    play = play
    name = name
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