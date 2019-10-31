# config.ru (run with rackup)
require './app'
run Battle
map "/public" do
  run Rack::Directory.new("./public")
end