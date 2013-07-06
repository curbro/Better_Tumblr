class CreateTumblelogs < ActiveRecord::Migration
  def change
    create_table :tumblelogs do |t|
      t.string :tumblelog
      t.integer :total_posts
      t.integer :total_text
      t.integer :total_quote
      t.integer :total_link
      t.integer :total_answer
      t.integer :total_video
      t.integer :total_audio
      t.integer :total_photo
      t.integer :total_chat
      t.datetime :last_updated

      t.timestamps
    end
  end
end
