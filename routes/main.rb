class MyApp < Sinatra::Application
    get "/" do
      @title = "Hello World!"
      slim :main
    end
end
