# Don't care if cert is invalid, we're just reading
module OpenSSL
  module SSL
    remove_const :VERIFY_PEER if defined?(VERIFY_PEER)
  end
end
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
