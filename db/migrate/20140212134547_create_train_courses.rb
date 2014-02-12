class CreateTrainCourses < ActiveRecord::Migration
  def change
    create_table :train_courses do |t|
      t.string :name
      t.date :start_date
      t.float :hours
      t.text :description
      t.string :organizer
      t.string :status
      t.references :register, index: true

      t.timestamps
    end
  end
end
