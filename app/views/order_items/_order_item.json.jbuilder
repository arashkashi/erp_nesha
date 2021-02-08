json.extract! order_item, :id, :pipe_type_id, :amount, :order_id, :created_at, :updated_at
json.url order_item_url(order_item, format: :json)
