# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


admin=User.create({ name: "Seed User", email: 'admin@rubyonrails.com',
               password: 'password', password_confirmation: 'password',
               roles: {}.to_json
           })

pipe_type_atrributes = [
  { name: "D200/31.55", user_id: admin['id'], weight: 2 },
  { name: "D300/31.55", user_id: admin['id'], weight: 5 }
]
PipeType.create(pipe_type_atrributes)
customers_attributes = [
	{name: "کمیلی", phone: "0912", user_id: admin['id'], meta:{}.to_json},
	{name: "توحیدی", phone: "0912", user_id: admin['id'], meta:{}.to_json},
	{name: "قریشی", phone: "0912", user_id: admin['id'], meta:{}.to_json},
	{name: "قرترگاه شهید رجایی", phone: "0912", user_id: admin['id'], meta:{}.to_json}
]

Customer.create(customers_attributes)

first_customer = Customer.all.first
last_customer = Customer.all.last

orders_attribute = [
	{name: "Kerman", customer_id: first_customer['id'], user_id: admin['id'], meta:{}.to_json},
	{name: "Chabahar", customer_id: last_customer['id'], user_id: admin['id'], meta:{}.to_json},
]

Orders.create(orders_attribute)

