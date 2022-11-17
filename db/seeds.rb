puts "Creating seeds..."
puts 'seeding adopters...'
10.times do
  Adopter.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end
puts 'seedings shelters...'
10.times do
  Shelter.create(name: Faker::Name.first_name, address: Faker::Address.full_address)
end

puts 'seeding pets...'
25.times do
  Pet.create(name: Faker::Creature::Dog.name, species: "dog", age: Faker::Number.between(from: 1, to: 12), adopted?: false, adopter_id: Adopter.all.sample.id, shelter_id: Shelter.all.sample.id)
end

puts "Seeding completed!"