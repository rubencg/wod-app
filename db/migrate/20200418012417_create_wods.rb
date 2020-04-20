class CreateWods < ActiveRecord::Migration[6.0]
  def change
    create_table :wods do |t|
      t.string :title
      t.text :notes
      t.text :description
      t.string :week_name
      t.boolean :is_main, null: false, default: false

      t.timestamps
    end
  end
end
