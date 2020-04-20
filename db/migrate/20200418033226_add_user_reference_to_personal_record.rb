class AddUserReferenceToPersonalRecord < ActiveRecord::Migration[6.0]
  def change
    add_reference :personal_records, :user, null: false, foreign_key: true
  end
end
