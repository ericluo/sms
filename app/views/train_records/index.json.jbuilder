json.array!(@train_records) do |train_record|
  json.extract! train_record, :id, :train_course_id, :user_id
  json.url train_record_url(train_record, format: :json)
end
