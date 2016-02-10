require 'uca_api'
module UcaApi
  module Config
    # This will read from ~/.config/uca_api/key and retrieve the first line as
    # the key. If no file is found, it will return nil. Empty string in file
    # returns nil.
    def self.read_default_key_from_file
      path = File.join(ENV['HOME'], '.config', 'uca_api', 'key')
      File.open(path) { |ff| ff.read }
    rescue
      nil
    end

    Key = ENV['UCA_API_KEY'] || UcaApi::Config::read_default_key_from_file || :undefined
  end
end
