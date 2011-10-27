require 'helper'

class TestCipher < Test::Unit::TestCase
  should 'return a version' do
    assert_instance_of String, Cipher::VERSION
  end
end
