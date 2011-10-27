require 'cipher/generator'
require 'cipher/validator'
require 'cipher/exceptions'
require 'cipher/version'

class Cipher
  attr_accessor :key_length, :section_length, :seperator, :hasher
  
  include Generator
  include Validator
  include Exceptions
  include Version
  
  def initialize(args = {})
    @key_length = args[:key_length].to_f.ceil || 16
    @section_length = args[:section_length].to_f.ceil || 4
    @seperator = args[:seperator].to_s || '-'
    @hasher = args[:hasher] || 'sha1'
  end
end