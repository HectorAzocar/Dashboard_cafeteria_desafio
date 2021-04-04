# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Sale.destroy_all
Cafe.destroy_all

100.times do
    cafe = Faker::Coffee.blend_name
    duplicate = Cafe.find_by(blend_name: cafe)
    if !duplicate
            Cafe.create(
                [
                    {
                        blend_name: cafe,
                        origin: Faker::Coffee.origin,
                        price: rand(1990..5490)
                    }
                ]
            )
    end
end

min_id = Cafe.minimum(:id)
max_id = Cafe.maximum(:id)

1000.times do
    Sale.create(
        cafe_id: rand(min_id..max_id),
        sale_date: Faker::Date.between(from: 4.year.ago, to: Date.today),
        amount: rand(1..4)
    )
end
