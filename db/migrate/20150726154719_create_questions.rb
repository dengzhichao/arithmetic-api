class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :first_operand
      t.string :operator
      t.integer :second_operand
      t.integer :answer
    end
  end
end
