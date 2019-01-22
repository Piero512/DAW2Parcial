json.extract! task, :id, :name, :desc, :deadline, :event_id, :created_at, :updated_at
json.url task_url(task, format: :json)
