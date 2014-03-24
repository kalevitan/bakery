json.array!(@doughnuts) do |doughnut|
  json.extract! doughnut, :id, :name, :water, :sugar, :salt, :eggs, :yeast, :filling
  json.url doughnut_url(doughnut, format: :json)
end
