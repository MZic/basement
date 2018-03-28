# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Currency.destroy_all
Plan.destroy_all
PlanRule.destroy_all
bitcoin = Currency.create(full_name: 'Bitcoin', short_name: 'BTC')
litecoin = Currency.create(full_name: 'Litecoin', short_name: 'LTC')
ethereum = Currency.create(full_name: 'Ethereum', short_name: 'ETH')

# START Bitcoin PRICE PLAN
bitcoin_snack = Plan.create(name: 'Snack', currency_id: bitcoin.id, ticket_price: 0.001, participant_threshold: 1000)
PlanRule.create(plan_id: bitcoin_snack.id, position: 1, prize: 0.03)
PlanRule.create(plan_id: bitcoin_snack.id, position: 2, prize: 0.01)
PlanRule.create(plan_id: bitcoin_snack.id, position: 3, prize: 0.005)
17.times do |position|
  PlanRule.create(plan_id: bitcoin_snack.id, position: position + 3, prize: 0.002)
end

bitcoin_lunch = Plan.create(name: 'Lunch', currency_id: bitcoin.id, ticket_price: 0.003, participant_threshold: 500)
PlanRule.create(plan_id: bitcoin_lunch.id, position: 1, prize: 0.2)
PlanRule.create(plan_id: bitcoin_lunch.id, position: 2, prize: 0.1)
PlanRule.create(plan_id: bitcoin_lunch.id, position: 3, prize: 0.05)
17.times do |position|
  PlanRule.create(plan_id: bitcoin_lunch.id, position: position + 3, prize: 0.006)
end

bitcoin_dinner = Plan.create(name: 'Dinner', currency_id: bitcoin.id, ticket_price: 0.01, participant_threshold: 300)
PlanRule.create(plan_id: bitcoin_dinner.id, position: 1, prize: 0.5)
PlanRule.create(plan_id: bitcoin_dinner.id, position: 2, prize: 0.2)
PlanRule.create(plan_id: bitcoin_dinner.id, position: 3, prize: 0.1)
17.times do |position|
  PlanRule.create(plan_id: bitcoin_dinner.id, position: position + 3, prize: 0.05)
end
# END Bitcoin PRICE PLAN

# START Litecoin PRICE PLAN
litecoin_snack = Plan.create(name: 'Snack', currency_id: litecoin.id, ticket_price: 0.03, participant_threshold: 1000)
PlanRule.create(plan_id: litecoin_snack.id, position: 1, prize: 1)
PlanRule.create(plan_id: litecoin_snack.id, position: 2, prize: 0.5)
PlanRule.create(plan_id: litecoin_snack.id, position: 3, prize: 0.2)
17.times do |position|
  PlanRule.create(plan_id: litecoin_snack.id, position: position + 3, prize: 0.01)
end

litecoin_lunch = Plan.create(name: 'Lunch', currency_id: litecoin.id, ticket_price: 0.1, participant_threshold: 500)
PlanRule.create(plan_id: litecoin_lunch.id, position: 1, prize: 2.5)
PlanRule.create(plan_id: litecoin_lunch.id, position: 2, prize: 1)
PlanRule.create(plan_id: litecoin_lunch.id, position: 3, prize: 0.5)
17.times do |position|
  PlanRule.create(plan_id: litecoin_lunch.id, position: position + 3, prize: 0.01)
end

litecoin_dinner = Plan.create(name: 'Dinner', currency_id: litecoin.id, ticket_price: 0.5, participant_threshold: 300)
PlanRule.create(plan_id: litecoin_dinner.id, position: 1, prize: 10)
PlanRule.create(plan_id: litecoin_dinner.id, position: 2, prize: 5)
PlanRule.create(plan_id: litecoin_dinner.id, position: 3, prize: 3)
17.times do |position|
  PlanRule.create(plan_id: litecoin_dinner.id, position: position + 3, prize: 1.5)
end
# END Litecoin PRICE PLAN

# START Ethereum PRICE PLAN
ethereum_snack = Plan.create(name: 'Snack', currency_id: ethereum.id, ticket_price: 0.015, participant_threshold: 1000)
PlanRule.create(plan_id: ethereum_snack.id, position: 1, prize: 0.5)
PlanRule.create(plan_id: ethereum_snack.id, position: 2, prize: 0.2)
PlanRule.create(plan_id: ethereum_snack.id, position: 3, prize: 0.1)
17.times do |position|
  PlanRule.create(plan_id: ethereum_snack.id, position: position + 3, prize: 0.05)
end

ethereum_lunch = Plan.create(name: 'Lunch', currency_id: ethereum.id, ticket_price: 0.05, participant_threshold: 500)
PlanRule.create(plan_id: ethereum_lunch.id, position: 1, prize: 1.5)
PlanRule.create(plan_id: ethereum_lunch.id, position: 2, prize: 0.5)
PlanRule.create(plan_id: ethereum_lunch.id, position: 3, prize: 0.1)
17.times do |position|
  PlanRule.create(plan_id: ethereum_lunch.id, position: position + 3, prize: 0.02)
end

ethereum_dinner = Plan.create(name: 'Dinner', currency_id: ethereum.id, ticket_price: 0.15, participant_threshold: 500)
PlanRule.create(plan_id: ethereum_dinner.id, position: 1, prize: 4)
PlanRule.create(plan_id: ethereum_dinner.id, position: 2, prize: 2)
PlanRule.create(plan_id: ethereum_dinner.id, position: 3, prize: 1)
17.times do |position|
  PlanRule.create(plan_id: ethereum_dinner.id, position: position + 3, prize: 0.5)
end
# END Ethereum PRICE PLAN
