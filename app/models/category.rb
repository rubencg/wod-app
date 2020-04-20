class Category < ApplicationRecord
  has_many :wods

  def self.rich_category
    Category.find_by(name: 'Richs')
  end

  def self.new_wod_categories
    Category.where.not(name: 'Richs')
  end
end
