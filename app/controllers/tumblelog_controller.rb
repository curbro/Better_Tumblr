class TumblelogController < ApplicationController
  def Display_Blog
  end
  
  def Get_Blog
    
    if params[:blogname] 
      $blog = params[:blogname]
    
      Tumblr.configure do |config|
          config.consumer_key = BetterTumblr::Application.config.api_key
          config.consumer_secret = BetterTumblr::Application.config.api_secret
        end
      client = Tumblr::Client.new
        @request = client.posts("#{$blog}.tumblr.com", :limit => 1)
        @total_posts = @request['blog']['posts'].to_i
        @total_text = 0
        @total_quote = 0
        @total_link = 0
        @total_answer = 0
        @total_video = 0
        @total_audio = 0
        @total_photo = 0
        @total_chat = 0
      
      x = 0
        loop do
          @request = client.posts("#{$blog}.tumblr.com", :limit => 50, :offset => x)
          x = x + @request['posts'].length
          
          @request['posts'].each do |post|
            post_type = post['type']
            if post_type == 'text'
              @total_text += 1
            elsif post_type == 'video'
              @total_video += 1
            elsif post_type == 'photo'
              @total_photo += 1
            elsif post_type == 'quote'
              @total_quote += 1
            elsif post_type == 'link'
              @total_link += 1
            elsif post_type == 'answer'
              @total_answer += 1          
            elsif post_type == 'audio'
              @total_audio += 1          
            elsif post_type == 'chat'
              @total_chat += 1
            end
          end
          break if @request['posts'].length != 50
        end
        obj = Tumblelog.find_or_initialize_by_tumblelog("#{$blog}")
        #instance_variable_set("@#{$blog}", Tumblelog.new)
        
        obj[:total_text] = @total_text
        obj[:total_video] = @total_video
        obj[:total_photo] = @total_photo
        obj[:total_quote] = @total_quote
        obj[:total_link] = @total_link
        obj[:total_audio] = @total_audio
        obj[:total_chat] = @total_chat
        obj[:total_answer] = @total_answer
        obj[:total_posts] = @total_posts
        obj[:tumblelog] = "#{$blog}"
        obj.save
=begin
        instance_variable_get("@#{$blog}")[:total_text] = @total_text
        instance_variable_get("@#{$blog}")[:total_video] = @total_video
        instance_variable_get("@#{$blog}")[:total_photo] = @total_photo
        instance_variable_get("@#{$blog}")[:total_quote] = @total_quote
        instance_variable_get("@#{$blog}")[:total_link] = @total_link
        instance_variable_get("@#{$blog}")[:total_audio] = @total_audio
        instance_variable_get("@#{$blog}")[:total_chat] = @total_chat
        instance_variable_get("@#{$blog}")[:total_answer] = @total_answer
        instance_variable_get("@#{$blog}")[:total_posts] = @total_posts
        instance_variable_get("@#{$blog}")[:tumblelog] = "#{$blog}"
        #instance_variable_get("@#{$blog}")[:last_updated] = DateTime
        instance_variable_get("@#{$blog}").save
=end
      end
      
  end
end
