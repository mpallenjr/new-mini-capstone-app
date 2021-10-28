class OrdersController < ApplicationController
  def index
    orders = Order.all 
    render json: orders
  end
  def create
    product = Product.find_by(id: params[:product_id])    
    calculated_subtotal = params[:quantity].to_i * product.price
    tax_rate = 0.07
    calculated_tax = calculated_subtotal * tax_rate
    calculated_total = calculated_tax + calculated_subtotal
    
    order = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: calculated_subtotal,
      tax: calculated_tax,      
      total: calculated_total,      
    )
    order.save
    render json: order.as_json
  end
  def show
    the_id = params[:id]
    show_id = Order.find_by(id: the_id)
    render json: show_id.as_json
  end
end
