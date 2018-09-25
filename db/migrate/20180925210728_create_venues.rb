class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :venue

      t.timestamps

    end
  end
end
