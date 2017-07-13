# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
%w(users trainer admin).each do |role|
  Role.create name: role
end

# create admin user
User.create(first_name: 'john', last_name: 'doe', username: 'john_doe', password: 'password123',
            email: 'john@email.com', role: Role.last)
