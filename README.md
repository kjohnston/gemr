gemr -- A quick gem for displaying the latest versions of gems.
====================================

## DESCRIPTION

Tired of going to rubygems.org to lookup the latest version of gems?  Gemr allows you to quickly query for the latest versions of any gem on Rubygems from the command line!

## INSTALLATION

	$  gem install gemr

## USAGE

Simply pass one or more gem names to the gemr executable, like so:

	$ gemr porter rspec-rails

### Example Output:

	Finding latest gem versions...
	
	gem "porter", "~> 1.0.2"
	gem "rspec-rails", "~> 2.6.1"
