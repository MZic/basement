class Plan < ApplicationRecord
  has_many :plan_rules
  has_many :rounds
  belongs_to :currency

  def first_prize
    plan_rules.where(position: 1).first.prize
  end

  def second_prize
    plan_rules.where(position: 2).first.prize
  end

  def third_prize
    plan_rules.where(position: 3).first.prize
  end

  def nth_prize(position = 4)
    plan_rules.where(position: position).first.try(:prize) || 0.0
  end
end
