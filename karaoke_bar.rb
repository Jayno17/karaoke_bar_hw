class KaraokeBar

  attr_reader :till, :entry_fee

  def initialize(till, entry_fee)
    @till = till
    @entry_fee = entry_fee
  end


  def increase_till(amount)
    @till += amount
  end



  end
