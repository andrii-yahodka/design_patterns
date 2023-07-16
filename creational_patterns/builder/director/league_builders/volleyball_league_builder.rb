require_rel 'league_builder'

class VolleyballLeagueBuilder < LeagueBuilder
  class VolleyballLeague < League; end

  def initialize
    @league = VolleyballLeague.new
  end

  private

  def team
    Faker::Sports::Volleyball.team
  end

  def player
    Faker::Sports::Volleyball.player
  end

  def coach
    Faker::Sports::Volleyball.coach
  end
end
