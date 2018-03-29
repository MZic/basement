require "spec_helper"

describe 'RoundServiceSpec', type: :service do
  let(:plan) { FactoryBot.create(:plan) }
  let(:round) { FactoryBot.create(:round, plan: plan, name: 'Round 1') }
  let(:tickets) { FactoryBot.create(:ticket, rond: round) }

  # def run_round
  #   round.tickets.shuffle.each_with_index do |participant, index|
  #     position = index + 1
  #     prize = round.plan.nth_prize(position) || 0
  #     attr = { position: position, prize: prize }
  #     participant.update_attributes!(attr)
  #   end
  # end
  describe "#run_round" do
    # before do
    #   allow(round).to receive(:tickets).and_return(tickets)
    # end
    it { puts tickets.id }
  end
end
