class Tumblelog < ActiveRecord::Base
  attr_accessible :last_updated, :total_answer, :total_audio, :total_chat, :total_link, :total_photo, :total_posts, :total_quote, :total_text, :total_video, :tumblelog
end
