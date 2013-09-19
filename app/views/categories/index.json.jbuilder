json.array!(@categories) do |category|
  json.extract! category, :title, :width, :height, :top, :left
  json.url category_url(category, format: :json)
end
