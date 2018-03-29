class RoundService
  attr_accessor :round

  def initialize(round)
    @round = round
  end

  def self.create_round(plan)
    Round.create(plan: plan, name: "#{Date.today} Round")
  end

  def run_round
    round.tickets.shuffle.each_with_index do |participant, index|
      position = index + 1
      prize = round.plan.nth_prize(position) || 0
      attr = { position: position, prize: prize }
      participant.update_attributes!(attr)
    end
  end
end
