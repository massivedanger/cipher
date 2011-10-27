class Cipher
  module Validator
    def validate(args = {})
      unique = args[:unique]
      key = args[:key]
      
      if unique.nil? || key.nil?
        raise ArgumentError, 'You need to pass a hash with a unique string and a key to validate'
      end
      
      generate({ unique: unique }) == key
    end
  end
end