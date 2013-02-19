$: << File.dirname(__FILE__)

require 'tent/game'
require 'tent/runner'
require 'tent/version'
require 'tent/army'
require 'tent/troop'
require 'tent/report'

module Tent
  class << self

    def setup
      @alive = true
      game_loop
    end
    
    def game_loop
      while @alive do
        3.times do
          "You are alive"
        end
        @alive = false
      end
      "You have lost"
    end
    
    private
  end
end

Tent.setup