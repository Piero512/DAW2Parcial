json.extract! event, :id, :name, :desc, :due_time, :created_at, :updated_at
json.url event_url(event, format: :json)
