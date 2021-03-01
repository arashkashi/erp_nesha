json.extract! raw_material_input, :id, :raw_material_type_id, :amount, :user_id, :created_at, :updated_at
json.url raw_material_input_url(raw_material_input, format: :json)
