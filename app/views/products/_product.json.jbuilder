json.extract! product, :id, :name, :description, :brand_id, :status, :created_at, :updated_at
json.url product_url(product, format: :json)
