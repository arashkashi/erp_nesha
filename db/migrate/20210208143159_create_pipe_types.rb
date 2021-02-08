class CreatePipeTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :pipe_types, id: :uuid do |t|
      t.references :user, null: false, foreign_key: true, type: :uuid
      t.string :name
      t.decimal :weight, precision: 6, scale: 2

      t.timestamps
    end
    add_index :pipe_types, :name, unique: true
  end
end
