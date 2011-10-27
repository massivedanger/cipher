class Cipher
  
  module Generator
    
    def generate(unique)
      output = ''
      i = 0
      
      while i < (@key_length/@section_length).ceil do
        output << hash(unique + i.to_s)[0..@section_length-1] + @seperator
        i += 1
      end
      
      output[0..-@seperator.length-1].upcase
    end
    
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