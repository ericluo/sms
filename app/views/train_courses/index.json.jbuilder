json.array!(@train_courses) do |train_course|
  json.extract! train_course, :id, :name, :start_date, :hours, :description, :organizer, :status, :register_id
  json.url train_course_url(train_course, format: :json)
end
