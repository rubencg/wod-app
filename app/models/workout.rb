class Workout < ApplicationRecord
    def Date()
        self.ScheduledDateInteger.to_s.to_date
    end
end
