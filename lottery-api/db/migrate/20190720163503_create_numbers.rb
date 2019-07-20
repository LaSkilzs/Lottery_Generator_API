class CreateNumbers < ActiveRecord::Migration[5.2]
  def change
    create_table :numbers do |t|
      t.integer :pick
      t.references :lottery, foreign_key: true

      t.timestamps
    end
  end
end
