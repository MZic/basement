# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

bitcoin = Currency.create(full_name: 'Bitcoin', short_name: 'BTC')
litecoin = Currency.create(full_name: 'Litecoin', short_name: 'LTC')
ethereum = Currency.create(full_name: 'Ethereum', short_name: 'ETH')
