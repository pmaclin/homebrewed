json.array!(@recipes) do |recipe|
  json.extract! recipe, :id, :name, :brewery_name, :about, :brew_type_id, :standard_id, :user_id
  json.url recipe_url(recipe, format: :json)
end
