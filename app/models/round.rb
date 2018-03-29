class Round < ApplicationRecord
  belongs_to :plan
  has_many :tickets
end
