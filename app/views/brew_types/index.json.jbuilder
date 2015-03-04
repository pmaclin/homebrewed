json.array!(@brew_types) do |brew_type|
  json.extract! brew_type, :id, :name, :description
  json.url brew_type_url(brew_type, format: :json)
end
