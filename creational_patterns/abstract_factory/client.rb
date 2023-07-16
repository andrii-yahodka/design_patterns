require_rel 'sport_team_abstract_factories'

class AbstractFactoryClient
  attr_reader :factory

  HEADINGS = %w(Player Rank Skill)

  def initialize(factory)
    @factory = Module.const_get("#{factory.capitalize}TeamAbstractFactory").new
  end

  def generate
    table = Terminal::Table.new title:    factory.sport,
                                headings: HEADINGS,
                                rows:     rows

    puts table
  end

  private

  def rows
    factory.create.map(&:values)
  end
end
