class OrdersController < ApplicationController
  
  def create
    order = Order.new(
      user_id: "1",
      product_id: "2",
      quantity: "100",
      subtotal: "30",
      tax: "32",
      total: "33"
)
order.save
    render json: order.as_json
  end
end
