module Skiff
  class Manager
    def intitialize(base_path = '/sys/bus/w1/devices')
      @base_path = base_path
    end

    def probes
      paths = Dir.glob(File.join(@base_path, "*"))
      probes = paths.select { |path| path.include?("-") }.map { |path| path.split('/').last.strip }
    end

    def create_probe(probe_name)
      ::Skiff::Probe.new(@base_path, probe_name)
    end
  end
end
