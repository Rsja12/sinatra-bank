5.times do 
    Client.create(name: Faker::Name.name, email: Faker::Internet.email, password: "password")
end