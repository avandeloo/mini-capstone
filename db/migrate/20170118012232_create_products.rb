class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.string :image
      t.string :description
      t.string :release_date

      t.timestamps
    end
  end
end
