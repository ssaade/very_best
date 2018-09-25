class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :dish
      t.integer :foodtype_id

      t.timestamps

    end
  end
end
