require_rel '../winger_abstract_product'

class UnusualWinger < WingerAbstractProduct
  private
  
  def rank
    Faker::Number.within(range: 5000..10000)
  end
end
