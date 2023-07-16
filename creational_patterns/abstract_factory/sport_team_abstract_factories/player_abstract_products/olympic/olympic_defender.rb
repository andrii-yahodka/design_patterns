require_rel '../defender_abstract_product'

class OlympicDefender < DefenderAbstractProduct
  private
  
  def rank
    Faker::Number.within(range: 100..1000)
  end
end
