json.extract! sale, :id, :title, :body, :user_id, :created_at, :updated_at
json.url sale_url(sale, format: :json)
