require 'uca_api'
module UcaApi
  module Config
    Key = ENV['UCA_API_KEY'] || :undefined
  end
end
