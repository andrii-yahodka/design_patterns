require_rel '../winger_abstract_product'

class AncientWinger < WingerAbstractProduct
  private
  
  def rank
    Faker::Number.within(range: 50..100)
  end
end
