# frozen_string_literal: true

require 'net/http'
require 'uri'
require 'json'
require 'time'

require 'ika2/version'
require 'ika2/truf'
require 'ika2/ranked'
require 'ika2/league'
require 'ika2/salmon'

module Ika2
  class Error < StandardError; end

  class << self
    def get_schedule(rule, time = 'schedule')
      uri = URI("https://spla2.yuu26.com/#{rule}/#{time}")
      res = Net::HTTP.get_response(uri)
      JSON.parse(res.body)['result']
    end
  end
end

class Hash
  def method_missing(name)
    return self[name].extend Hash if key? name

    each { |k, v| return v if k.to_s.to_sym == name }
    super.method_missing(name)
  end
end
