json.array!(@tris) do |tri|
  json.extract! tri, :title, :urne_id
  json.url tri_url(tri, format: :json)
end
