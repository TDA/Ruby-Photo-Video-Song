require './Clip'

class Song < Clip
  attr_accessor :bitrate

  def initialize(name, bitrate)
    super(name)
    self.bitrate = bitrate
  end

  def to_s
    "This is #{@name} with bitrate #{@bitrate}"
  end

end

song = Song.new("Manjal Veiyil", 128)
puts song


song.add_comments("superb song!!")
song.add_comments("this is so melodious!!")
puts "Comments:"
puts song.comments

puts Song.ancestors