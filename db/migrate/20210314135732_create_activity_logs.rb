class CreateActivityLogs < ActiveRecord::Migration[6.1]
  def change
    create_table :activity_logs, id: :uuid do |t|
      t.string :browser
      t.string :ip_address
      t.string :controller
      t.string :action
      t.json :params
      t.references :user, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
