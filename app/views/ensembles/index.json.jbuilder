json.array!(@ensembles) do |ensemble|
  json.extract! ensemble, :name, :width, :height, :top, :left
  json.url ensemble_url(ensemble, format: :json)
end
