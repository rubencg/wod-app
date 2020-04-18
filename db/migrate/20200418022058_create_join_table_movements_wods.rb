class CreateJoinTableMovementsWods < ActiveRecord::Migration[6.0]
  def change
    create_join_table :movements, :wods do |t|
      # t.index [:movement_id, :wod_id]
      # t.index [:wod_id, :movement_id]
    end
  end
end
