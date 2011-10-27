require 'cipher/generator'
require 'cipher/validator'
require 'cipher/version'

class Cipher
  include Generator
  include Validator
  include Version
  
  def initialize(args = {})
    
  end
  
  def generate
    
  end
  
  def validate
    
  end
end