require "http"

module YelpFusion
	class Client
		API_HOST = "https://api.yelp.com"
		SEARCH_PATH = "/v3/businesses/search"
		BUSINESS_PATH = "/v3/businesses/"

		SEARCH_LIMIT = 5

		attr_accessor :auth_token

		def initialize(auth_token = nil)
			@auth_token = auth_token
			
		end

		def check_auth_token
			if @auth_token.nil? || @auth_token.empty?
				@auth_token = nil
				Raise ArgumentError.new("Missing Auth Token, please provide one to use the API")
			else
				@auth_token_freeze = true
			end
		end

		def search(term, location)
			url = "#{API_HOST}#{SEARCH_PATH}"
			params = {
			    term: term,
			    location: location,
			    limit: SEARCH_LIMIT
			}
			connection.get(url, params: params)
		end

		def connection
			HTTP.auth("Bearer #{@auth_token}")
		end
	end
end 