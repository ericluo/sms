class AddPointsToTrainCourse < ActiveRecord::Migration
  def change
    add_column :train_courses, :points, :integer
  end
end
