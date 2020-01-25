class Room

attr_accessor :name, :number_of_places, :number_of_guests, :songs


  def initialize(name, number_of_places, number_of_guests, songs)
    @name = name
    @number_of_places = number_of_places
    @number_of_guests = number_of_guests
    @songs = songs
  end


def check_in_guests(amount)
  @number_of_places -= amount
  @number_of_guests += amount
end

end
