module Gemr
  module Rubygems
    class Versions

      def self.latest(gems=[])
        puts "\nFinding latest gem versions...\n\n"
        gems.each do |g|
          begin
            response = URI.open("https://rubygems.org/api/v1/versions/#{g}.json").read
            versions = JSON.parse(response)
            latest_version = versions.first["number"]
            puts "gem \"#{g}\", \"~> #{latest_version}\""
          rescue
            puts "Could not find \"#{g}\" gem on http://rubygems.org."
          end
        end
        puts ""
      end

    end
  end
end
