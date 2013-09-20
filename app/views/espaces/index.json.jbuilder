json.array!(@espaces) do |espace|
  json.extract! espace, :name, :width, :height, :top, :left
  json.url espace_url(espace, format: :json)
end
