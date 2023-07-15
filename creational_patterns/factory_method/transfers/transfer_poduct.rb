class TransferProduct
  def generate
    {
      player:      player,
      age:         age,
      left_team:   left_team,
      joined_team: joined_team,
      position:    position,
      fee:         fee
    }
  end

  private

  def player
    raise NotImplementedError
  end

  def age
    Faker::Number.within(range: 18..60)
  end

  def left_team
    raise NotImplementedError
  end

  def joined_team
    raise NotImplementedError
  end

  def position
    raise NotImplementedError
  end

  def fee
    [Faker::Currency.symbol, Faker::Number.within(range: 100000..100000000)].join(' ')
  end
end