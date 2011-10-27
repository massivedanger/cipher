class Cipher
  module Validator
    def validate(key)
      generate == key
    end
  end
end