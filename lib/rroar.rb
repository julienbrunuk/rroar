require "rroar/version"

module Rroar
  EventMachine.connect '127.0.0.1', 22 do |c|
    def c.receive_data(data)
      p data
    end
  end
end
