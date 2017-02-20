class AddNewTagToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :new_tag, :boolean, default: true
  end
end
