require 'builder'
require 'silverpop/connection'
require 'silverpop/request'
require 'client/contact'
require 'client/reporting'
require 'client/user'

module SilverPop
  class Client
    def initialize(options={})
      @access_token = options[:access_token]
      @silverpop_url = options[:url]
    end

    include SilverPop::Connection
    include SilverPop::Request
    include SilverPop::Client::Contact
    include SilverPop::Client::Reporting
    include SilverPop::Client::User
  end
end
