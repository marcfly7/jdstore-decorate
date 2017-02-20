class AddHotProductTagToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :hot_product_tag, :boolean, default: false
  end
end
