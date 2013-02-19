module Tent
  class Troop
    def initialize(occupation)
      @occupation = occupation
    end
    
    def random_name
      random_first_name + random_last_name
    end
    
    def random_first_name
      %w{ Arthur John David Samuel George Thomas Benjamin James Andrew William }.sample
    end
    
    def random_last_name
    end
  end
end