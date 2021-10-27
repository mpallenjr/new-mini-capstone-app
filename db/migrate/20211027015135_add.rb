class Add < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :tax, :integer

  end
end
