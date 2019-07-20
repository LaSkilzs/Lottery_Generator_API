class ChangeDataTypeLottery < ActiveRecord::Migration[5.2]
  def change
    change_column :lotteries, :date, :datetime
  end
end
