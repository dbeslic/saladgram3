class CreateChats < ActiveRecord::Migration
  def change
    create_table :chats do |t|

      t.string :title

      t.string :chat_avatar_url

      t.integer :user_id

      t.integer :prize_id


      t.timestamps

    end

  end
end
