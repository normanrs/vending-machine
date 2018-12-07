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
      slot_in = Slot.new(slot.first.to_sym, slot[1]["cost"], slot[1]["capacity"])
      slot[1]["contents"].each do |snack|
        snack_in = Snack.new(snack["type"])
        @slot << snack_in
      end
      @machine.add_slot(slot_in)
    end
  end

end
