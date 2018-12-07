class Machine

  	attr_reader :slots

  	def initialize
  		@slots = []
  	end

    def add_slot(slot)
      @slots << slot
    end

end
