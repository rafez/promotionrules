require "spec_helper"
require 'products'

describe PurchaseRule do
  before :all do
    #PurchaseRule1 = PurchaseRule.new( 6000, 10 )
    #co = Checkout.new()
    item = Product.new().products
    p item.to_s
    
    #item2 = Product.new( '002', 'Personalised cufflinks', 4500 )
    #item3 = Product.new( '003', 'Kid T-Shirt', 1995)
  end

  it "applies the discount rule only if spend is over 6000" do
    purR1 = PurchaseRule.new( 6000, 10 )
  end
end
