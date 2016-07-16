module Skiff
  class Probe
    def initialize(base_path, name)
      @full_path_name = File.join([base_path, name, "w1_slave"])
    end

    def fahrenheit
      (temperature * 1.8) + 32.0
    end

    def raw
      file_contents = File.read(@full_path_name)
    end

    def temperature
      temperature_data = raw.split('t=').last
      temperature =  temperature_data.to_f / 1000
      return temperature
    end
  end
end
