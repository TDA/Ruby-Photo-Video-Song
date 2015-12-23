class Photo
  attr_accessor :type, :location
  def details
    puts "Was shot at #{@location} with #{@type}"
  end
end
