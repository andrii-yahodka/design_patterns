require_rel 'chess_player_prototype'
require_rel 'chess_player_prototype_registry'

class PrototypeClient
  attr_reader :number

  HEADINGS = %w(Rating Name Title Opening)

  def initialize(number)
    @number = number
  end

  def generate
    table = Terminal::Table.new title:    Faker::Sports::Chess.tournament,
                                headings: HEADINGS,
                                rows:     rows

    puts table
  end

  private

  def rows
    prototype = ChessPlayerPrototype.new Faker::Sports::Chess.rating
    
    registry = ChessPlayerPrototypeRegistry.new prototype
    number.times { registry.add_player }
    collection = registry.collection

    collection.map do |player|
      [player.rating, player.name, player.title, player.opening]
    end
  end
end
