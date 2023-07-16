require_rel 'sport_team_abstract_factory'
require_rel 'player_abstract_products/unusual'

class UnusualTeamAbstractFactory < SportTeamAbstractFactory
  def sport
    Faker::Sport.unusual_sport
  end

  def create
    [
      UnusualGoalkeeper.new.create,
      UnusualGoalkeeper.new.create,
      UnusualGoalkeeper.new.create,
      UnusualDefender.new.create,
      UnusualDefender.new.create,
      UnusualDefender.new.create,
      UnusualWinger.new.create,
      UnusualWinger.new.create,
      UnusualWinger.new.create
    ]
  end
end
