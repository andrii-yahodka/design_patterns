require_rel 'transfer_poduct'

class FootballTransfer < TransferProduct
  private

  def player
    Faker::Sports::Football.player
  end

  def left_team
    Faker::Sports::Football.team
  end

  def joined_team
    Faker::Sports::Football.team
  end

  def position
    Faker::Sports::Football.position
  end
end