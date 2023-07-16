require_rel '../winger_abstract_product'

class OlympicWinger < WingerAbstractProduct
  private
  
  def rank
    Faker::Number.within(range: 500..1000)
  end
end
