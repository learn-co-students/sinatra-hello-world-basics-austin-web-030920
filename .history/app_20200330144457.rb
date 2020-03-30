class App < Sinatra::Base

  # Define your GET '/' route below and respond with "Hello, World!"

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
 
    if req.path=="/"
      resp.write "Hello, World!"
      resp.status = 200
    end
  end
end
