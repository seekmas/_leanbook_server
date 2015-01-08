json.array!(@categories) do |category|
  json.extract! category, :id, :subject, :description
  json.url category_url(category, format: :json)
end
