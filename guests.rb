class Guest

attr_reader :name, :favourite_song, :wallet


  def initialize(name, favourite_song, wallet)
    @name = name
    @favourite_song = favourite_song
    @wallet = wallet
  end

  def take_money_from_guest(amount)
    @wallet -= amount
  end

end
