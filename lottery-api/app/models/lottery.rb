class Lottery < ApplicationRecord
  has_many :numbers, dependent: :destroy
  validates_presence_of :name, :date

  def self.drawing(type,date)  
    winning_numbers = Array.new
    lotto = Lottery.create(name: type, date: date)
      while type > 0
        winning_numbers << Number.generatePick(lotto.id)
        type -=1
      end
    winning_numbers
  end

end
