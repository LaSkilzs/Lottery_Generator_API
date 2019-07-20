class Lottery < ApplicationRecord
  has_many :numbers

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
