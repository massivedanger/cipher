class Cipher
  module Exceptions    
    class CipherException < Exception; end

    class NoConfigurationSupplied < CipherException; end
  end
end