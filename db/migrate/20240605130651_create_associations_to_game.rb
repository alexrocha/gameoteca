class CreateAssociationsToGame < ActiveRecord::Migration[7.1]
  def change
    create_table :developers_games do |t|
      t.belongs_to :developer
      t.belongs_to :game

      t.timestamps
    end

    create_table :games_platforms do |t|
      t.belongs_to :platform
      t.belongs_to :game

      t.timestamps
    end

    create_table :games_genres do |t|
      t.belongs_to :genre
      t.belongs_to :game

      t.timestamps
    end

    create_table :games_publishers do |t|
      t.belongs_to :publisher
      t.belongs_to :game

      t.timestamps
    end
  end
end
