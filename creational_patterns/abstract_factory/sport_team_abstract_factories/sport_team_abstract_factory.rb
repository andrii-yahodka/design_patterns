class SportTeamAbstractFactory
  def sport
    raise NotImplementedError
  end

  def create
    raise NotImplementedError
  end
end
