json.array!(@articles) do |article|
  json.extract! article, :id
  json.title article.title
  json.image article.image
  json.url article.url
  json.body article.body
end
