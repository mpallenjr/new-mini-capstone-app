class ProductsController < ApplicationController
  def create
    new_product = Product.new(
      
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url], 
      description: params[:description]
    
    )
    new_product.save
    render json: new_product.as_json

  end
end
