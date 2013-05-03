class ProductRule
  def initialize code, qty, price
    @rule = {:code => code, :qty => qty, :price => price }
  end
end