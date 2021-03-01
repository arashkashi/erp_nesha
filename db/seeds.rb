# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Users
admin=User.create({ name: "آرش کاشی", email: 'arashkashi@gmail.com',
               password: '12345', password_confirmation: '12345',
               roles: {}.to_json, is_admin: true, enabled: true
           })

# Pipe Types
pipe_type_atrributes = [
  { name: "D200/31.55", user_id: admin['id'], weight: 2 },
  { name: "D300/31.55", user_id: admin['id'], weight: 5 }
]
PipeType.create(pipe_type_atrributes)

# Customers
customers_attributes = [
	{name: "کمیلی", phone: "0912", user_id: admin['id'], meta:{}.to_json},
	{name: "توحیدی", phone: "0912", user_id: admin['id'], meta:{}.to_json},
	{name: "قریشی", phone: "0912", user_id: admin['id'], meta:{}.to_json},
	{name: "قرترگاه شهید رجایی", phone: "0912", user_id: admin['id'], meta:{}.to_json}
]

Customer.create(customers_attributes)

first_customer = Customer.all.first
last_customer = Customer.all.last

# Orders (Projects)
orders_attribute = [
	{name: "Kerman", customer_id: first_customer['id'], user_id: admin['id'], meta:{}.to_json},
	{name: "Chabahar", customer_id: last_customer['id'], user_id: admin['id'], meta:{}.to_json}
]

Order.create(orders_attribute)

# Raw material types
raw_types_att = [
	{name: "اروین", user_id: admin['id']},
	{name: "امیر کبیر", user_id: admin['id']},
	{name: "جم", user_id: admin['id']}
]

RawMaterialType.create(raw_types_att)

# Washer types
washer_types_att = [
		{name: "D200", user_id: admin['id']},
	{name: "D315", user_id: admin['id']},
	{name: "D400", user_id: admin['id']}
]
WasherType.create(washer_types_att)


