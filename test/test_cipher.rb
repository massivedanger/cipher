require 'helper'

class TestCipher < Test::Unit::TestCase
  def setup
    @cipher = Cipher.new
  end
  
  should 'generate a key' do
    assert_instance_of String, @cipher.generate
  end
  
  should 'validate a key' do
    assert @cipher.validate(@cipher.generate)
  end
end
