require_rel '../defender_abstract_product'

class AncientDefender < DefenderAbstractProduct
  private
  
  def rank
    Faker::Number.within(range: 1..100)
  end
end
