require "rspec"
require "capybara/rspec"
require_relative "../server"
require_relative "../app/models/player"
require_relative "../app/models/game"

Capybara.app = Sinatra::Application
