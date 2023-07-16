require_rel '../defender_abstract_product'

class UnusualDefender < DefenderAbstractProduct
  private
  
  def rank
    Faker::Number.within(range: 1000..10000)
  end
end
