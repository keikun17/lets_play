class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.string :name
      t.string :icon_big
      t.string :icon_small

      t.timestamps
    end
  end
end
