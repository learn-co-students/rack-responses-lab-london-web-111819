class Application

    def call(env)
      resp = Rack::Response.new

      current_time = Time.now.strftime("%H:%M").to_s
  
      resp.write "The time now is #{current_time} \n"
  
      if Time.now.strftime("%H:%M") < "11:59"
        resp.write "Good Morning!"
      else
        resp.write "Good Afternoon"
      end
  
      resp.finish
    end
  
  end
  