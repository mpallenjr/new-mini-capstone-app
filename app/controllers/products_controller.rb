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
    the_id = params[:id]
    show_product = Product.find_by(id: the_id)
    render json: show_product.as_json
  end

  def update
    the_id = params[:id]
    update_product = Product.find_by(id: the_id)
    update_product.name = params[:name]
    update_product.price = params[:price]
    update_product.image_url = params[:image_url]
    update_product.description = params[:description]
    update_product.save
    render json: update_product.as_json
  end

  def delete
    the_id = params[:id]
    delete_product = Product.find_by(id: the_id)
    delete_product.destroy
    render json: {message: "The product was successfully deleted."}
  end
end
