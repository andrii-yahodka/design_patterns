class ChessPlayerPrototypeRegistry
  attr_reader :prototype,
              :collection

  def initialize(prototype)
    @prototype  = prototype
    @collection = []
  end

  def add_player
    chess_player         = prototype.clone
    chess_player.name    = Faker::Sports::Chess.player
    chess_player.title   = Faker::Sports::Chess.title
    chess_player.opening = Faker::Sports::Chess.opening

    collection << chess_player
  end
end
