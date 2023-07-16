require_rel 'player_abstract_product'

class DefenderAbstractProduct < PlayerAbstractProduct
  private
  
  def skill
    'Stop opponent attack.'
  end
end
