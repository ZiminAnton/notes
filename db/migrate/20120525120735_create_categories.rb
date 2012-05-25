class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.integer :subcategory_id

      t.timestamps
    end
  end
end
