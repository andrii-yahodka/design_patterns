class ChessPlayerPrototype
  attr_accessor :rating,
                :title,
                :name,
                :opening

  def initialize(rating)
    @rating  = rating
    @title   = nil
    @name    = nil
    @opening = nil
  end
end
