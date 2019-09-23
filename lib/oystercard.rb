class Oystercard

  attr_reader :balance
  DEFAULT_MAX_BALANCE = 90

  def initialize(max_balance = DEFAULT_MAX_BALANCE)
    @max_balance = max_balance
    @balance = 0
  end

  def top_up(amount)
    if (@balance + amount) > @max_balance
      puts "Error: Top-up will exceed maximum balance of £#{@max_balance}"
      false
    else
      @balance += amount
      true
    end
  end

end
