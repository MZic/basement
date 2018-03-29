FactoryBot.define do
  factory :plan, class: 'Plan' do
    ticket_price 0.001
    participant_threshold 100

    before :create do |plan|
      plan.currency = create(:currency)
    end

    after :create do |plan|
      create(:plan_rule, plan: plan, position: 1, prize: 0.005)
      create(:plan_rule, plan: plan, position: 2, prize: 0.003)
      create(:plan_rule, plan: plan, position: 3, prize: 0.002)
      17.times do |position|
        create(:plan_rule, plan: plan, position: position+3, prize: 0.001)
      end
      plan.save!
    end
  end
end
