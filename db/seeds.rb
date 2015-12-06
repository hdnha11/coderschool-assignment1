sections = %w[Breakfast Lunch Dinner Drinks]

sections.each do |section|
    rand(5..15).times do
        item = MenuItem.new(name: Faker::Lorem.sentence, description: Faker::Lorem.paragraph, price: Faker::Number.decimal(5), section: section, image_url: "http://lorempixel.com/400/400/food/#{Faker::Lorem.word}")
        item.save!
    end
end