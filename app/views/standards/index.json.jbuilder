json.array!(@standards) do |standard|
  json.extract! standard, :id, :style, :color, :aroma, :taste, :description
  json.url standard_url(standard, format: :json)
end
