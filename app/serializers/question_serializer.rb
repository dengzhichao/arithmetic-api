class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :title, :answer, :operator
  # has_many :distractors

end
