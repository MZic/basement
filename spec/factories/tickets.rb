FactoryBot.define do
  factory :ticket do
    number Time.now.to_i
    transaction_id Time.now.to_i
  end
end
