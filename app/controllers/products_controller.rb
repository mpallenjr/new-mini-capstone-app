class ProductsController < ApplicationController
  def create
    render json: {message:"hello"}
  end
end
