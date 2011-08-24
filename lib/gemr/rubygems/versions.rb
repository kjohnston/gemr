module Gemr
  module Rubygems
    class Versions

      # Don't care if cert is invalid, we're just reading
      OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

      def self.latest(gems=[])
        puts "\nFinding latest gem versions...\n\n"
        gems.each do |g|
          begin
            response = open("https://rubygems.org/api/v1/versions/#{g}.json").read
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
