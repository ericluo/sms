class TrainRecord < ActiveRecord::Base
  belongs_to :train_course
  belongs_to :user
end
