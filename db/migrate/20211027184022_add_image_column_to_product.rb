class AddImageColumnToProduct < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :image_id, :integer

  end
end