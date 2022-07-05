puts "Creating seeds..."

Alien.create(name: "JoJo", earth_disguise_name: "Totally Normal Joe", home_planet: "Zeptar", light_years_to_home_planet: 2)
Alien.create(name: "Clerggg", earth_disguise_name: "James Cameron", home_planet: "Pandora", light_years_to_home_planet: 6)
Alien.create(name: "Korniand", earth_disguise_name: "Starfire", home_planet: "Tamarind", light_years_to_home_planet: 26)

5.times do
  Earthling.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name , job: Faker::Job.title)
end

25.times do
  Visitation.create(date: Date.new, alien_id: rand(1..3), earthling: Earthling.all.sample)
end

puts "Seeding completed!"