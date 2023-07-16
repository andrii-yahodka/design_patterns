require_rel '../goalkeeper_abstract_product'

class UnusualGoalkeeper < GoalkeeperAbstractProduct
  private
  
  def rank
    Faker::Number.within(range: 2000..10000)
  end
end
