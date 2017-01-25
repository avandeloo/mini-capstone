class MakeChangesToProducts < ActiveRecord::Migration[5.0]
  def change
    change_column :products, :price, :decimal, precision: 4, scale: 2
    change_column :products, :description, :text
  end
end
