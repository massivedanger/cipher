class Cipher  
  module Generator    
    def generate(args = {})
      @key_length ||= args[:key_length]
      @section_length ||= args[:section_length]
      @seperator ||= args[:seperator]
      unique = args[:unique]
      
      output = ''
      i = 0
      
      if unique.nil?
        raise ArgumentError, 'You need to pass a hash with a unique to generate a key'
      end
      
      while i < (@key_length/@section_length).ceil do
        output << hash(unique + i.to_s)[0..@section_length-1] + @seperator
        i += 1
      end
      
      output[0..-@seperator.length-1].upcase
    end
    
    def hash(string)
      @hasher ||= 'sha1'
      
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