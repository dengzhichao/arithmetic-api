class Question < ActiveRecord::Base
  acts_as_copy_target
  has_many :distractors, dependent: :destroy

end
