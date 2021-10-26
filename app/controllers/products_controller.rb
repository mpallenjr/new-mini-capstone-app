class ProductsController < ApplicationController
  def create
    new_product = Product.new(
      
      name: "Chewing Gum", 
      price: 1, 
      image_url: "https://www.eatthis.com/wp-content/uploads/sites/4/2021/02/chewing-gum.jpg", 
      description: "chewable breath refresher."
    
    )
    new_product.save
    render json: new_product.as_json
    
  end
end
