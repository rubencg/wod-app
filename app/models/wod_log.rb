class WodLog < ApplicationRecord
    belongs_to :wod
    belongs_to :user

    def formatted_created_at
        created_at.in_time_zone('Guadalajara').strftime('%d-%m-%Y %I:%M %P')
    end
end
