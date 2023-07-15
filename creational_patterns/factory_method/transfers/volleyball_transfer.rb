require_rel 'transfer_poduct'

class VolleyballTransfer < TransferProduct
  private

  def player
    Faker::Sports::Volleyball.player
  end

  def left_team
    Faker::Sports::Volleyball.team
  end

  def joined_team
    Faker::Sports::Volleyball.team
  end

  def position
    Faker::Sports::Volleyball.position
  end
end