class CreateItemTimings < ActiveRecord::Migration[6.1]
  def change
    create_table :item_timings do |t|
      t.integer :hero_id
      t.string :item
      t.integer :time
      t.integer :games
      t.integer :wins

      t.timestamps
    end
  end
end
