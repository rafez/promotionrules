class PurchaseRule
  def initialize total, percentage
    base = {:total => total, :percentage => percentage }
    @rule.merge( base )
  end
 
=begin  
  def apply_promotion( checkout, sum=0)
    checkout.total_before_promotions > @rule[:total] ? (checkout.total_before_promotions - sum) / @rule[:percentage] : 0
  end
=end  
end