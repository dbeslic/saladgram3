class CreateShoutouts < ActiveRecord::Migration
  def change
    create_table :shoutouts do |t|

      t.integer :user_id

      t.integer :saladgram_id

      t.string :comment


      t.timestamps

    end

  end
end
