class ChangeDataAgainTypeLottery < ActiveRecord::Migration[5.2]
  def change
    change_column :lotteries, :date, :string
  end
end
