class Cipher
  module Validator
    def validate(args = {})
      generate(args[:unique]) == args[:key]
    end
  end
end