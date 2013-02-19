module Tent
  class Game

    def start
      clear_screen
      welcome_prompt
      world_map
      @alive = true
      play_game
    end
    
    def clear_screen
      print "\e[2J\e[f"
    end
    
    def new_turn
      puts "Turn number #{current_turn}"
      a = gets.chomp
      if a == "die"
        @alive = false
      else 
        puts "You live again"
      end
      next_turn
    end
    
    def world_map
      #TODO: Need a better way of generating terrain randomly
      @world = [
          "WWWW00000000000000000000000000000000000000000000".split(""),
          "011110000000000000000000000000000000000000000000".split(""),
          "000210000000000000000000000FFFF00000000000000000".split(""),
          "000111111111111111110000FFFFFFFFFF00000000000000".split(""),
          "000000001000000001000000000000000000000000000000".split(""),
          "000000001000000001111111100000000000000000000000".split(""),
          "000000001000000000000000011111100000000000000000".split(""),
          "000000001000000000000000000000000000000000000000".split(""),
          "000000001100000000000000000000000000000000000000".split(""),
          "000000001111111000000000000000000000000000000000".split(""),
          "000000000100011000000000000000000000000000000000".split(""),
          "000000000100001000000000000000000000000000000000".split(""),
          "000000000100002000000000000000000000000000000000".split(""),
          "000000000100000000000000000000000000000000000000".split(""),
          "000000000110000000000000000000000000000000000000".split(""),
          "000002111111112000000000000000000000000000000000".split(""),
          "000000000000000000000000MMM000000000000000000000".split(""),
          "000000000000000000000MMMMMMMMM000000000000000000".split(""),
          "0000000000000000000000000MM000000000000000000000".split(""),
          "000000000000000000000000000000000000000000000000".split(""),
          "000000000000000000000000000000000000000000000000".split(""),
          "000000000000000000000000000000000000000000000000".split(""),
          "000000000000000000000000000000000000000000000000".split(""),
          "000000000000000000000000000000000000000000000000".split(""),
          "000000000000000000000000000000000000000000000000".split(""),
      ]
    end
    
    def print_world
      @world.each do |row|
        p row.join()
      end
    end
    
    def current_turn
      @turn_number ||= 1
    end
    
    def next_turn
      @turn_number = @turn_number + 1
    end
    
    def welcome_prompt
      puts "Tent General: by David Fisher"
      puts "\n"
      puts "You are a general in a tent. The enemy is near, and the fate of your side depends on your decisions."
    end
    
    def randomize_field
      # Create your forces
      # Create their forces
    end
    
    def get_field_reports
    end
    
    def play_game
      while @alive do
        new_turn
      end
      game_lost
    end
    
    def game_lost
      puts "You have lost."
    end
    
  end
end