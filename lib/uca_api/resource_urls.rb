require 'uca_api'
module UcaApi
  include UcaApi::Config

  Base = "http://api.powertabs.net"
  Artists = "uca-artists/%s/%s" # key, letter param
  Compositions = "uca-compositions/%s/%s" # key, pattern

  def self.make_artists_url(pattern)
    "#{Base}/#{Artists}" % [Config::Key, pattern]
  end

  def self.make_compositions_url(pattern)
    "#{Base}/#{Compositions}" % [Config::Key, pattern]
  end
end
