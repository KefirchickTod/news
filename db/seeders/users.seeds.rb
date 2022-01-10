require 'bcrypt'

User.delete_all

5.times do |i|

  password = i == 0 ? "soft_admin" : Faker::Internet.password

  User.create email:       Faker::Internet.unique.email,
              password:    password,
              first_name:  Faker::Games::ElderScrolls.first_name,
              second_name: Faker::Games::ElderScrolls.last_name

end


