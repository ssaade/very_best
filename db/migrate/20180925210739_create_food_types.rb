class CreateFoodTypes < ActiveRecord::Migration
  def change
    create_table :food_types do |t|
      t.string :food_type

      t.timestamps

    end
  end
end
