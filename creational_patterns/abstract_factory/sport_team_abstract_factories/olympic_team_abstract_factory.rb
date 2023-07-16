require_rel 'sport_team_abstract_factory'
require_rel 'player_abstract_products/olympic'

class OlympicTeamAbstractFactory < SportTeamAbstractFactory
  def sport
    Faker::Sport.summer_olympics_sport
  end

  def create
    [
      OlympicGoalkeeper.new.create,
      OlympicGoalkeeper.new.create,
      OlympicDefender.new.create,
      OlympicDefender.new.create,
      OlympicWinger.new.create,
      OlympicWinger.new.create
    ]
  end
end
