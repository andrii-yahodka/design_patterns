require_rel 'league_builder'

class BasketballLeagueBuilder < LeagueBuilder
  class BasketballLeague < League; end

  def initialize
    @league = BasketballLeague.new
  end

  private

  def team
    Faker::Sports::Basketball.team
  end

  def player
    Faker::Sports::Basketball.player
  end

  def coach
    Faker::Sports::Basketball.coach
  end
end
