class UpdateDescriptionDataType < ActiveRecord::Migration[7.1]
  def change
    change_column :products, :description, :text
    change_column :products, :price, :decimal, precision: 15, scale: 2
    add_column :products, :inventory, :integer
  end
end
