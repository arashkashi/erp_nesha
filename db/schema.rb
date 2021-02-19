# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_02_08_150716) do

# Could not dump table "customers" because of following StandardError
#   Unknown type 'uuid' for column 'id'

# Could not dump table "order_items" because of following StandardError
#   Unknown type 'uuid' for column 'id'

# Could not dump table "orders" because of following StandardError
#   Unknown type 'uuid' for column 'id'

# Could not dump table "pipe_store_inputs" because of following StandardError
#   Unknown type 'uuid' for column 'id'

# Could not dump table "pipe_store_outputs" because of following StandardError
#   Unknown type 'uuid' for column 'id'

# Could not dump table "pipe_types" because of following StandardError
#   Unknown type 'uuid' for column 'id'

# Could not dump table "users" because of following StandardError
#   Unknown type 'uuid' for column 'id'

  add_foreign_key "customers", "users"
  add_foreign_key "order_items", "orders"
  add_foreign_key "order_items", "pipe_types"
  add_foreign_key "orders", "customers"
  add_foreign_key "orders", "users"
  add_foreign_key "pipe_store_inputs", "order_items"
  add_foreign_key "pipe_store_inputs", "pipe_types"
  add_foreign_key "pipe_store_inputs", "users"
  add_foreign_key "pipe_store_outputs", "order_items"
  add_foreign_key "pipe_store_outputs", "pipe_types"
  add_foreign_key "pipe_store_outputs", "users"
  add_foreign_key "pipe_types", "users"
end
