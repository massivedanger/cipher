class Cipher
  module Generator
    def generate
      
    end
    
    def random
      (0...8).map{65.+(rand(25)).chr}.join
    end
    private :random
    
    def hash(string)
      case @hasher
      when 'sha1'
        require 'digest/sha1'
        Digest::SHA1.hexdigest(string)
      when 'md5' 
        require 'digest/md5'
        Digest::MD5.hexdigest(string)
      else
        require 'digest/sha1'
        Digest::SHA1.hexdigest(string)
      end
    end
    private :hash
  end
end