# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: 'david@gmail.com', username: 'davidjkim', first_name: 'David', last_name: 'Kim', street_address: '12 Maple Street', city: 'Glass', state: 'NY', password: 'abc123', password_confirmation: 'abc123')
