json.extract! order, :id, :name, :customer_id, :user_id, :meta, :created_at, :updated_at
json.url order_url(order, format: :json)
