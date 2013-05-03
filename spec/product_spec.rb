require 'spec_helper'


describe Product do
  before :all do
    @product = Product.new "Code", "Name", 1
  end

  describe "#new" do
    it "returns a new product object" do
      @product.should be_an_instance_of Product
    end

   describe "#code" do
      it "returns the correct code" do
        @product.code.should eql "Code"
      end
    end

    describe "#name" do
      it "returns the correct name" do
        @product.name.should eql "Name"
      end
    end

    describe "#price" do
      it "returns the correct price" do
        @product.price.should eql 1
      end
    end
    
    describe "products contains product" do
      it "has more than 0 products" do
        @product.products.length.should > 0 
      end

      it "has more than 1 products" do
        @product2 = Product.new "Code2", "NextProduct", 3
        @product2.products.length.should > 1 
      end
      
      it "has a product called Code" do
        @product.products.should include('Code')
      end
      
      
    end
    
  end
end 