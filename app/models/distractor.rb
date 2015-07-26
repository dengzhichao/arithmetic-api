class Distractor < ActiveRecord::Base
  belongs_to :question
  acts_as_copy_target
end
