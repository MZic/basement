FactoryBot.define do
  factory :plan do
    ticket_price 0.001
    participant_threshold 100

    after :create do |plan|
      plan.currency = FactoryBot.create(:currency)
      FactoryBot.create(:plan_rule, plan: plan, position: 1, prize: 0.005)
      FactoryBot.create(:plan_rule, plan: plan, position: 2, prize: 0.003)
      FactoryBot.create(:plan_rule, plan: plan, position: 3, prize: 0.002)
      17.times do |position|
        FactoryBot.create(:plan_rule, plan: plan, position: position+3, prize: 0.001)
      end
      plan.save!
    end
  end
end
