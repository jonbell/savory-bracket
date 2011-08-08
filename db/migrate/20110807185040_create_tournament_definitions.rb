class CreateTournamentDefinitions < ActiveRecord::Migration
  def self.up
    create_table :tournament_definitions do |t|
      t.string :name, :null => false
      t.integer :number_of_contestants, :null => false
      t.integer :quorum, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :tournament_definitions
  end
end
