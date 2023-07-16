class LeagueBuilder
  League = Struct.new(:teams, :players, :coaches)

  attr_reader :league

  def initialize
    raise NotImplementedError
  end

  def build_teams(number)
    league.teams = Array.new(number).map { team }
  end

  def build_players(number)
    league.players = Array.new(number).map { player }
  end

  def build_coaches(number)
    league.coaches = Array.new(number).map { coach }
  end

  private

  def team
    raise NotImplementedError
  end

  def player
    raise NotImplementedError
  end

  def coach
    raise NotImplementedError
  end
end
