require_rel 'director'

class BuilderClient
  attr_reader :builder, :rank

  def initialize(builder, rank)
    @builder = Module.const_get("#{builder.capitalize}LeagueBuilder").new
    @rank    = rank
  end

  def generate
    league = create_league

    puts teams_table   league
    puts players_table league
    puts coaches_table league
  end

  private

  def create_league
    director = LeaguesDirector.new(builder)
    director.send :"create_#{rank}_league"

    builder.league
  end

  def teams_table(league)
    Terminal::Table.new title: 'Teams',
                        rows:  league.teams.map { |row| [row] }
  end

  def players_table(league)
    Terminal::Table.new title: 'Players',
                        rows:  league.players.map { |row| [row] }
  end

  def coaches_table(league)
    Terminal::Table.new title: 'Coaches',
                        rows:  league.coaches.map { |row| [row] }
  end
end
