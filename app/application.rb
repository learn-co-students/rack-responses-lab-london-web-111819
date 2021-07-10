class Application 
    def call(env)
        
        resp = Rack::Response.new
        
        year = Time.now.year
        month = Time.now.month
        day = Time.now.day 

        midday = Time.new(year, month, day, 12, 0, 0)
        

        if Time.now < midday
            resp.write "Good Morning!"
        else
            resp.write "Good Afternoon!"
        end 
        resp.finish
    end 
end 