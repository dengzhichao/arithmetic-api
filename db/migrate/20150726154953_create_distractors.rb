class CreateDistractors < ActiveRecord::Migration
  def change
    create_table :distractors do |t|
      t.integer :distractor
      t.references :question, index: true, foreign_key: true
    end
  end
end
