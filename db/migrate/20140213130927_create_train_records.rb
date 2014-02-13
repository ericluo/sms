class CreateTrainRecords < ActiveRecord::Migration
  def change
    create_table :train_records do |t|
      t.references :train_course, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
