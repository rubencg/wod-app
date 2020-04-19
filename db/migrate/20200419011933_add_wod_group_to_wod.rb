class AddWodGroupToWod < ActiveRecord::Migration[6.0]
  def change
    add_column :wods, :wod_group, :integer
  end
end
