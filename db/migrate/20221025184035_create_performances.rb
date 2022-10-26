class CreatePerformances < ActiveRecord::Migration[6.1]
  def change
    create_table :performances do |t|
      t.string :title
      t.integer :streamer_id
      t.integer :game_id
    end
  end
end
