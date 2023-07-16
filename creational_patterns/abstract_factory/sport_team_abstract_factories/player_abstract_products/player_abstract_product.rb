class PlayerAbstractProduct
  def create
    {
      name:  name,
      rank:  rank,
      skill: skill
    }
  end

  private

  def name
    Faker::Sports::Football.player
  end

  def rank
    raise NotImplementedError
  end

  def skill
    raise NotImplementedError
  end
end
