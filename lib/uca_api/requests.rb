require 'uca_api'
require 'net/http'

module UcaApi
  def self.artists(pattern)
    puts Net::HTTP.get(URI(self.make_artists_url(pattern)))
  end

  def self.songs(pattern)
    puts Net::HTTP.get(URI(self.make_compositions_url(pattern)))
  end
end
