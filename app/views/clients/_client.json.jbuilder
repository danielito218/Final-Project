json.extract! client, :id, :name, :rif, :email, :city_id, :created_at, :updated_at
json.url client_url(client, format: :json)
