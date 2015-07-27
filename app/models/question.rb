class Question < ActiveRecord::Base
  has_many :distractors, dependent: :destroy

end
