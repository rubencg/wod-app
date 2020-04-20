class Movement < ApplicationRecord
    has_and_belongs_to_many :wods
    has_many :personal_records
end
