class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title
      t.integer :answer
      t.string :operator

      t.timestamps null: false
    end
  end
end
