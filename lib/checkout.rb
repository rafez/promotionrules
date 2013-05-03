class Checkout
  attr_accessor :basket
  
  def initialize(promotion_rules)
    @promotion_rules = promotion_rules
    @basket = []
  end
  
  def scan( product)
    @basket << product
  end
  
  def total_before_promotions
    basket.map
  end
  
  def total
    @promotion_rules.apply_promotions( self )
  end
end