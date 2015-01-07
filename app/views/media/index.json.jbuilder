json.array!(@media) do |medium|
  json.extract! medium, :id, :subject, :description, :medium_url
  json.url medium_url(medium, format: :json)
end
