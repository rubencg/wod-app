class AddMovementReferenceToPersonalRecord < ActiveRecord::Migration[6.0]
  def change
    add_reference :personal_records, :movement, null: false, foreign_key: true
  end
end
