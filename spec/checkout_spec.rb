require 'spec_helper'
require 'products'

describe Checkout do
=begin
  before :all do
    item1 = Product.new( '001', 'Travel Card Holder', 925)
    item2 = Product.new( '002', 'Personalised cufflinks', 4500 )
    item3 = Product.new( '003', 'Kid T-Shirt', 1995)
  end
=end
  
  it "handles the test data 1" do
    co = Checkout.new(PromotionalRules.new)
    co.scan(item1)
    co.scan(item2)
    co.scan(item3)
    price = co.total
    price.should == 6678
  end
  
  
end