class LeaguesDirector
  attr_reader :builder

  def initialize(builder)
    @builder = builder
  end

  def create_junior_league
    builder.build_teams   5
    builder.build_players 10
    builder.build_coaches 1
  end

  def create_middle_league
    builder.build_teams   10
    builder.build_players 20
    builder.build_coaches 5
  end

  def create_senior_league
    builder.build_teams   100
    builder.build_players 200
    builder.build_coaches 50
  end
end
