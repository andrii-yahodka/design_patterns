require_rel '../goalkeeper_abstract_product'

class OlympicGoalkeeper < GoalkeeperAbstractProduct
  private
  
  def rank
    Faker::Number.within(range: 300..1000)
  end
end
