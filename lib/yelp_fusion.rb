require "yelp_fusion/version"
require "yelp_fusion/client"

module YelpFusion
	def self.client
		@client ||= YelpFusion::Client.new
	end
end