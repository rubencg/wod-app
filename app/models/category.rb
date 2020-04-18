class Category < ApplicationRecord
  has_many :wods
  def self.rich_category
    Category.find_by(name: 'Rich Froning')
  end
end
