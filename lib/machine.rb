require './lib/import_data.rb'

class Machine
  include ImportData

	attr_reader :slots

	def initialize
		@slots = []
	end

  def add_slot(slot)
    @slots << slot
  end

end
