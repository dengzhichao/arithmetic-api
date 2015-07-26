class Question < ActiveRecord::Base
  has_many :distractors, dependent: :destroy

  acts_as_copy_target
end
