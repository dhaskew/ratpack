require 'sinatra'
require 'slim'

class MyApp < Sinatra::Application
  #configure :production do
  #
  #end
  #
  #configure :development do
  #
  #end
  #

  #helpers do
  #  include Rack::Utils
  #  alias_method :h, :escape_html
  #end

  #require_relative 'models/init'
  #require_relative 'helpers/init'
  require_relative 'routes/init'

end
