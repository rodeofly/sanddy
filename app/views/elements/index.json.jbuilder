json.array!(@elements) do |element|
  json.extract! element, :name, :width, :height, :top, :left
  json.url element_url(element, format: :json)
end
