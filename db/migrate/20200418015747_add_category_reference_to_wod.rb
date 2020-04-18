class AddCategoryReferenceToWod < ActiveRecord::Migration[6.0]
  def change
    add_reference :wods, :category, null: false, foreign_key: true
  end
end
