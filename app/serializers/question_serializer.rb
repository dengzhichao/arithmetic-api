class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :first_operand, :operator, :second_operand, :answer

end
