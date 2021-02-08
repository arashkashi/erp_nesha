json.extract! pipe_store_input, :id, :pipe_type_id, :amount, :user_id, :created_at, :updated_at
json.url pipe_store_input_url(pipe_store_input, format: :json)
