class MenuItem < ActiveRecord::Base
    validates :name, presence: true
    validates :price, numericality: true
    validates :section, inclusion: {in: %w[Breakfast Lunch Dinner Drinks]}
end
