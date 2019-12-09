class Application

  def call(env)
      resp = Rack::Response.new
 
      if Time.now.hour >= 12 && Time.now.hour <= 24
        resp.write "Good Afternoon!\n"
      else
        resp.write "Good Morning!\n"
      end
 
      resp.finish
    end

end

#    1. If it's before noon, greet the user with "Good Morning!"
#   2. If it's after noon, greet the user with "Good Afternoon!". Remember that getting the time may return results in 24 hour time! Anytime on or after 12 is the afternoon.

