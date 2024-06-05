class CreateGames < ActiveRecord::Migration[7.1]
  def change
    create_table :games do |t|
      t.string :title
      t.text :description
      t.date :release_date
      t.integer :players

      t.timestamps
    end
  end
end
