class CreateBids < ActiveRecord::Migration[7.0]
  def change
    create_table :bids do |t|
      t.float :ammount
      t.references :auction, null: false, foreign_key: true, index:true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
