class CreateScoreCriteria < ActiveRecord::Migration
  def self.up
    create_table :score_criteria do |t|
      t.integer :tournament_definition_id, :null => false
      t.string :name, :null => false
      t.float :weight, :null => false
    end
  end

  def self.down
    drop_table :score_criteria
  end
end
