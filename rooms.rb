class Room

attr_accessor :name, :capacity, :number_of_guests, :songs


  def initialize(name,capacity , number_of_guests, songs, till)
    @name = name
    @capacity = capacity
    @number_of_guests = number_of_guests
    @songs = songs

  end


def check_in_guests(number)
  @number_of_guests += number
  @capacity = capacity - number_of_guests
end

def check_out_guests(number)
  @number_of_guests -= number
  @capacity = capacity - number_of_guests
end

 def song_count
   return @songs.count
 end

def add_song_to_room(title)
  @songs << title
end

def check_room_capacity(number)
  if capacity > 0
    return true
  else
    return false
   end
 end


end
