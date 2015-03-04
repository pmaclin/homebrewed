json.array!(@batches) do |batch|
  json.extract! batch, :id, :size, :brew_dt, :primary_dt, :secondary_dt, :ferm_fin_dt, :bttle_dt, :standard_id, :recipe_id
  json.url batch_url(batch, format: :json)
end
