require 'helper'

class TestCipher < Test::Unit::TestCase
  def setup
    @cipher = Cipher.new({
      key_length: 32,
      section_length: 4,
      seperator: '-',
      hash: 'sha1'
    })
  end
  
  should 'generate a key' do
    assert_instance_of String, @cipher.generate({ unique: 'Evan Walsh' })
  end
  
  should 'validate a key' do
    assert @cipher.validate({ unique: 'Evan Walsh', key: @cipher.generate({ unique: 'Evan Walsh' }) })
  end
  
  should 'raise ArgumentError if non-unique generation is done' do
    assert_raises ArgumentError do
      @cipher.generate
    end
  end
  
  should 'raise ArgumentError if non-unique validation is done' do
    assert_raises ArgumentError do
      @cipher.validate
    end
  end
  
  should 'get rid of the end seperator' do
    key = @cipher.generate({ unique: 'Evan Walsh' })
    
    assert key[-1] != @cipher.seperator[-1]
  end
end
