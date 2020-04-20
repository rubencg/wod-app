class CreateJoinTableUsersWods < ActiveRecord::Migration[6.0]
  def change
    create_join_table :users, :wods do |t|
      # t.index [:user_id, :wod_id]
      # t.index [:wod_id, :user_id]
    end
  end
end
