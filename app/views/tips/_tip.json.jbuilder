json.extract! tip, :id, :lesson_name, :creator, :description, :helpful_links, :created_at, :updated_at
json.url tip_url(tip, format: :json)
