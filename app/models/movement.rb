class Movement < ApplicationRecord
    has_and_belongs_to_many :wods
end