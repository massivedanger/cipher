class Cipher
  def initialize(*args)
    
  end
  
  def self.generate
    Cipher::Generator.new
  end

  def self.validate
    Cipher::Validator.new
  end
end

require 'cipher/generator'
require 'cipher/validator'
require 'cipher/version'