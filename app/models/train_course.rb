class TrainCourse < ActiveRecord::Base
  belongs_to :register, class_name: 'User'
  has_many :train_records, dependent: :destroy
end
