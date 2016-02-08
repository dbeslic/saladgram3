class CreatePrizes < ActiveRecord::Migration
  def change
    create_table :prizes do |t|

      t.string :prize_name

      t.string :pic_url

      t.string :sponsor_name

      t.integer :chat_id


      t.timestamps

    end

  end
end
