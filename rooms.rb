class Room

attr_accessor :name, :number_of_places, :number_of_guests, :songs


  def initialize(name, number_of_places, number_of_guests, songs)
    @name = name
    @number_of_places = number_of_places
    @number_of_guests = number_of_guests
    @songs = songs
  end


def check_in_guests(number)
  @number_of_places -= number
  @number_of_guests += number 
end

 def song_count
   return @songs.count
 end

def add_song_to_room(title)
  @songs << title
end

end
