module Putson
  class Client
    URL = 'https://api.myjson.com/'.freeze

    attr_accessor :id

    def initialize(id: nil)
      @id = id
    end

    def post(data)
      data = data.to_json unless data.is_a? String
      response = client.post do |req|
        req.url '/bins'
        req.headers['Content-Type'] = 'application/json'
        req.body = data
      end
      parse_post_response(response)
    end

    def put(data)
      data = data.to_json unless data.is_a? String
      response = client.put do |req|
        req.url "/bins/#{id}"
        req.headers['Content-Type'] = 'application/json'
        req.body = data
      end
      parse_post_response(response)
    end

    def get(newid = nil)
      @id = newid unless newid.nil?
      response = client.get do |req|
        req.url "/bins/#{id}"
      end
      response.body
    end

    private

    def parse_post_response(response)
      body = JSON.parse(response.body)
      @id ||= body.fetch('uri', nil).gsub("#{URL}bins/", '')
    end

    def client
      @client ||= Faraday.new(URL)
    end
  end
end
