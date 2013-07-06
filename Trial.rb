require 'tumblr_client'
    
    Tumblr.configure do |config|
        config.consumer_key = "I3xNHqDwIoNH9Wisn2lS1ghVjLIzH9FQEAW6ep2EK8rNCAk9BR"
        config.consumer_secret = "hUpGTU6qVsNLpLaA0sILXz0zzAF9GblZJnpal5bRxmwyvPLLxf"
      end
      client = Tumblr::Client.new
      print client.posts("insemin8.tumblr.com", :type => "video", :limit => 1)