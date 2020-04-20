class AddCapAndOrderToWods < ActiveRecord::Migration[6.0]
  def change
    add_column :wods, :cap_minutes, :integer
    add_column :wods, :order, :integer
  end
end
