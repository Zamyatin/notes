10.times do
  User.create!(
               first_name: Faker::Name.first_name,
               last_name: Faker::Name.last_name,
               email: Faker::Internet.email,
               hashed_password: BCrypt::Password.create('password')
               )
end

