class CreateWodLogs < ActiveRecord::Migration[6.0]
  def change
    create_table :wod_logs do |t|
      t.integer :minutes
      t.integer :seconds
      t.text :notes

      t.timestamps
    end
  end
end
