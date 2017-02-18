class AddImagesToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :image2, :string
    add_column :products, :image3, :string
    add_column :products, :des_image, :string
    add_column :products, :app_image, :string
  end
end
