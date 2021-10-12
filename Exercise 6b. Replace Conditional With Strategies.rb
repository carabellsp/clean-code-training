# frozen_string_literal: true

CITIES = ['Minsk', 'Berlin'].freeze

def call
  CITIES.detect do |city|
    address.start_with?(city)
  end
end

# Ruby 'detect' method
# https://apidock.com/ruby/Enumerable/detect
