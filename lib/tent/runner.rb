require 'optparse'

module Tent
  class Runner
    def initialize
      @game = Tent::Game.new
    end
    
    def run
      @game.start
    end
  end
end