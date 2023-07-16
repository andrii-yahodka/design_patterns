require_rel '../goalkeeper_abstract_product'

class AncientGoalkeeper < GoalkeeperAbstractProduct
  private
  
  def rank
    Faker::Number.within(range: 30..100)
  end
end
