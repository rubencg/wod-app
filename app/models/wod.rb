class Wod < ApplicationRecord
    belongs_to :category
    has_and_belongs_to_many :movements
    has_many :wod_logs
    has_and_belongs_to_many :users

    def self.main_wods
        where(is_main: true).order(:wod_group)
    end

    def self.available_weeks
        where.not(week_name: nil).select(:week_name).distinct.order(:week_name)
    end

    def desc_html
        description.gsub(/\n/, '<br/>').html_safe
    end

    def notes_html
        notes.gsub(/\n/, '<br/>').html_safe
    end
end
