require_rel 'sport_team_abstract_factory'
require_rel 'player_abstract_products/ancient'

class AncientTeamAbstractFactory < SportTeamAbstractFactory
  def sport
    Faker::Sport.ancient_olympics_sport
  end

  def create
    [
      AncientGoalkeeper.new.create,
      AncientDefender.new.create,
      AncientWinger.new.create
    ]
  end
end
