class CreateLotteries < ActiveRecord::Migration[5.2]
  def change
    create_table :lotteries do |t|
      t.string :name
      t.date :date

      t.timestamps
    end
  end
end
