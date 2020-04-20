class AddUserReferenceToWodLog < ActiveRecord::Migration[6.0]
  def change
    add_reference :wod_logs, :user, null: false, foreign_key: true
  end
end
