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

  def index
    all_product = Product.all
    render json: all_product.as_json
  end

  def show
    show_product = Product.find_by(id:1)
    render json: show_product.as_json
  end

end
