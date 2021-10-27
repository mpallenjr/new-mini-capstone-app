class ProductsController < ApplicationController
  def create
    if current_user
      product = Product.new(
      name: params[:name], 
      price: params[:price],
      description: params[:description],
      supplier_id: params[:supplier_id]
    )
      product.save
      render json: product
    else
      render json: {message: "something went wrong"}
    end
  end
      
    

  

  def index
    if current_user
      all_product = Product.all
      render json: all_product
    else
      render json: {message: "something went wrong"}
    end
  end

  def show
    if current_user
      the_id = params[:id]
      show_product = Product.find_by(id: the_id)
      render json: show_product
    else
      render json: {message: "something went wrong"}
    end
  end

  def update
    if current_user
    the_id = params[:id]
    update_product = Product.find_by(id: the_id)
    update_product.name = params[:name]
    update_product.price = params[:price]
    update_product.description = params[:description]
    update_product.save
    render json: update_product
    else
      render json: {message: "something went wrong"}
    end
  end

  def delete
    if current_user
    the_id = params[:id]
    delete_product = Product.find_by(id: the_id)
    delete_product.destroy
    render json: {message: "The product was successfully deleted."}
    else
      render json: {message: "something went wrong"}
    end
  end

end


