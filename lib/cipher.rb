require 'cipher/generator'
require 'cipher/validator'
require 'cipher/exceptions'
require 'cipher/version'

class Cipher
  attr_accessor :key_length, :section_length, :seperator, :hasher, :upcase
  
  include Generator
  include Validator
  include Exceptions
  include Version
  
  def initialize(args = {})
    @key_length = args[:key_length] || 16
    @section_length = args[:section_length] || 4
    @seperator = args[:seperator] || '-'
    @hasher = args[:hasher] || 'sha1'
    @upcase = args[:upcase] || true
  end
end