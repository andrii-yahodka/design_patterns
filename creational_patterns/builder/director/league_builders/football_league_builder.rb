require_rel 'league_builder'

class FootballLeagueBuilder < LeagueBuilder
  class FootballLeague < League; end

  def initialize
    @league = FootballLeague.new
  end

  private

  def team
    Faker::Sports::Football.team
  end

  def player
    Faker::Sports::Football.player
  end

  def coach
    Faker::Sports::Football.coach
  end
end
