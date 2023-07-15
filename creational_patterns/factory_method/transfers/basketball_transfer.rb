require_rel 'transfer_poduct'

class BasketballTransfer < TransferProduct
  private

  def player
    Faker::Sports::Basketball.player
  end

  def left_team
    Faker::Sports::Basketball.team
  end

  def joined_team
    Faker::Sports::Basketball.team
  end

  def position
    Faker::Sports::Basketball.position
  end
end