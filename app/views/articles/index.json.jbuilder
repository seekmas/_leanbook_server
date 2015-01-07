json.array!(@articles) do |article|
  json.extract! article, :id, :subject, :short, :category, :photo_thumb, :photo_medium, :preview, :content, :user_id
  json.url article_url(article, format: :json)
end
