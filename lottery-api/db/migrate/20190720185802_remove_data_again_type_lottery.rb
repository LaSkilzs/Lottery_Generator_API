class RemoveDataAgainTypeLottery < ActiveRecord::Migration[5.2]
  def change
    remove_column :lotteries, :date
  end
end
