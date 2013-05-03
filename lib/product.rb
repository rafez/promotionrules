class Product

  @@products ||={}
  attr_accessor :code, :name, :price  

  def initialize code, name, price
    @code, @name, @price = code, name, price
    p "code=" + code
    @@products[ code ] = self
    p "products = " + @@products.to_s
  end
  
  def products
    @@products
  end
  
end