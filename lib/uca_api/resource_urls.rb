module UcaApi
  include Config

  Base = "http://api.powertabs.net"
  Artists = "uca-artists/%s/%s" # key, letter param
  Compositions = "uca-compositions/%s/%s" # key, pattern

  def self.make_artists_url(letter)
    "#{Base}/#{Artists}" % [Config::Key, letter]
  end

  def self.make_compositions_url(letter)
    "#{Base}/#{Compositions}" % [Config::Key, letter]
  end
end
