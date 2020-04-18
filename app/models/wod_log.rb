class WodLog < ApplicationRecord
    belongs_to :wod
    belongs_to :user
end
