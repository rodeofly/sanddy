json.array!(@echantillons) do |echantillon|
  json.extract! echantillon, :title, :categorie_id, :urne_id
  json.url echantillon_url(echantillon, format: :json)
end
