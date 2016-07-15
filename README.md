# Skiff

### This is Skiff
<br>

![image](skiff.png)


He's very worried about probes...

```
Lem: A cork?
Skiff: It's your best defense against the aliens' favorite form of research. The probe. You put it...
```

This gem provides a simple interface to a DS18b20 temperature probe, installed on a Raspberry Pi via the One Wire interface.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'skiff'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install skiff

## Usage

    # Under Raspbian, the temperature readings are typically
    # written to /sys/bus/w1/devices, so that is the default location.
    #
    # If you need to change it, pass your location in when you create
    # the ::Skiff::Manager like this:
    # 	manager = ::Skiff::Manager.new your_probe_location
    
    manager = ::Skiff::Manager.new
    
    # to get a list of all the attached probes:
    
    probes = manager.probes
    
    # probes => ["28-0115649922ff", "28-021564c24bff"]
    
    probe = manager.create_probe(probes.first)
    
    # returns an instance of ::Skiff::Probe
    
    # to get the raw temperature of a probe:
    
    temperature = probe.temperature
    
    # or in fahrenheit
    
    fahrenheit = probe.fahrenheit
    
    # and to get all the raw data
    
    raw_data = probe.raw
    
## Development

Don't like something?  Need more functionality?

Fork it, write it, create a Pull Request.

Rinse and repeat.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/newellista/skiff.
