class KaraokeBar

  attr_reader :rooms, :songs, :till, :entry_fee, :guests

  def initialize(rooms, songs,till, entry_fee, guests)
    @rooms = rooms
    @songs = songs
    @till = till
    @entry_fee = entry_fee
    @guests = guests

  end


  def increase_till(amount)
    @till += amount
  end

  def take_money_from_guest(amount)
    @guest.wallet -= amount
  end

  end
