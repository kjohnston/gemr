# gemr

A Ruby gem that provides a command line utility for displaying the latest versions of gems.

Tired of going to [http://rubygems.org](http://rubygems.org) to lookup the latest version of gems?  Use gemr from the command line to quickly retrieve entries for your Gemfile.

## Installation

	$  gem install gemr

## Usage

Simply pass one or more gem names to the gemr executable, like so:

	$ gemr porter rspec-rails

### Example Output:

	Finding latest gem versions...
	
	gem "porter", "~> 1.2.1"
	gem "rspec-rails", "~> 2.10.1"
	
The results are formatted for inclusion in your Gemfile.

## Ruby Support

Ruby 1.9.2 and up.

## License

* Freely distributable and licensed under the [MIT license](http://kjohnston.mit-license.org/license.html).
* Copyright (c) 2011-2012 Kenny Johnston [![endorse](http://api.coderwall.com/kjohnston/endorsecount.png)](http://coderwall.com/kjohnston)
