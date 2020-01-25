class Room

attr_reader :name, :number_of_places, :number_of_guests, :songs

  def initialize(name, number_of_places, number_of_guests, songs)
    @name = name
    @number_of_places = number_of_places
    @number_of_guests = number_of_guests
    @songs = songs
  end

end
