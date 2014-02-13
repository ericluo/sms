class TrainCourse < ActiveRecord::Base
  belongs_to :register, class_name: 'User'
end
