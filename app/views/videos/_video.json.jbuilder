json.extract! video, :id, :title, :description, :url, :active, :channel_id, :user_id, :created_at, :updated_at
json.url video_url(video, format: :json)
