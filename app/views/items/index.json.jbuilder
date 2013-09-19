json.array!(@items) do |item|
  json.extract! item, :title, :width, :height, :top, :left
  json.url item_url(item, format: :json)
end
