# cipher

cipher lets you generate license-key-type-string-things for your consumption and pleasure.

## Usage

### Installation
First, add to your Gemfile

	gem 'cipher'
	
or do `gem install cipher`

### Examples
Now, just initialize a Cipher object:

	@cipher = Cipher.new
	
This will give you a generic setup of a 16-length, alphanumeric key seperated every 4 characters by a hyphen.

#### Generation
Now, to generate a key, just pass it a unique string like so:

	@cipher.generate({ unique: 'Test Example' })
	
That will return a string like **82E3-1E9D-3B60-38BD**.
	
Let's say you don't really like that format, though. You can customize a lot of stuff. Like, let's change EVERYTHANG.

	@cipher = Cipher.new({
      key_length: 32,
      section_length: 8,
      seperator: '+',
      hash: 'md5'
    })
    
Now, if we call `@cipher.generate`, it'll return **82E38775+1E9D362B+3B600A71+38BDC7B9**.

#### Validation
Now, let's go back to the default config set by just calling `@cipher = Cipher.new`.

To validate a key, all you need to do is pass the unique and the key:
	
	product_key = @cipher.generate({ unique: 'Evan Walsh' })
	@cipher.validate({ unique: 'Evan Walsh', key: product_key })
	
If the unique and the key match up, it'll return true. Otherwise, it'll be false. Easy, right?

## Contributing to cipher
 
- Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet
- Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it
- Fork the project
- Start a feature/bugfix branch
- Commit and push until you are happy with your contribution
- Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
- Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

## License

Copyright (c) 2011 Massive Danger

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

