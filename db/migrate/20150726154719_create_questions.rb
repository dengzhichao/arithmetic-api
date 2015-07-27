class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :first_operand
      t.string :operator
      t.string :second_operand
      t.integer :answer
    end
  end
end
