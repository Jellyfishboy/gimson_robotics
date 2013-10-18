class LineItem < ActiveRecord::Base
  attr_accessible :cart_id, :product_id, :price, :weight, :thickness, :length
  belongs_to :product #the parent of lineitems is product
  belongs_to :cart #the parent of lineitems is cart
  belongs_to :order

  def total_price 
  	product.price * quantity
  end

end
