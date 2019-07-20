class Number < ApplicationRecord
  belongs_to :lottery
  validates_presence_of :pick, :lottery_id

  def self.generatePick(id)
    num = Number.create(pick: rand(0..100), lottery_id: id)
    num.pick
  end
end
