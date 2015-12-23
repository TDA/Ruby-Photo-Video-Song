require './Clip'

class Song < Clip
  attr_accessor :bitrate


  def initialize(play, name, bitrate)
    super(play, name)
    bitrate = bitrate
  end

  def to_s
    "This is #{@name} with bitrate #{@bitrate}"
  end

end

song = Song.new
song.bitrate = 128
song.name = "Manjal Veiyil"
puts song
