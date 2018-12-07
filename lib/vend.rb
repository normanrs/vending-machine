require './lib/import_data.rb'

class Vend
  include ImportData

  def startup(path)
    @incoming = import_json(path)
    @machine = Machine.new
    load_machine
  end

  def load_machine
    @incoming.each do |slot|
      Slot.new(slot["cost"])
    end
  end

end
