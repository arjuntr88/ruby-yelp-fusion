module YelpFusion
	class Client
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
	end
end 