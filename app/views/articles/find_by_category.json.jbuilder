json.array!(@articles) do |article|
  json.extract! article, :id, :subject, :short, :category, :photo_thumb
  json.url article_url(article, format: :json)
end
