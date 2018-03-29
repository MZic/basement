require "rails_helper"

describe RoundService, type: :service do
  let(:plan) { create(:plan) }
  let(:round) { create(:round, plan: plan, name: 'Round 1') }
  subject{ RoundService.new(round) }
  # def run_round
  #   round.tickets.shuffle.each_with_index do |participant, index|
  #     position = index + 1
  #     prize = round.plan.nth_prize(position) || 0
  #     attr = { position: position, prize: prize }
  #     participant.update_attributes!(attr)
  #   end
  # end
  describe "#run_round" do
    let!(:tickets) { create_list(:ticket, 25, round: round) }
    before { subject.run_round }

    it 'shold assing the right prices' do
      round.tickets.each do |ticket|
        expect(ticket.prize).to be(plan.nth_prize(ticket.position))
      end
    end
  end
end
