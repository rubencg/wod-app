class CreatePersonalRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :personal_records do |t|
      t.integer :minutes
      t.integer :seconds
      t.text :notes

      t.timestamps
    end
  end
end
