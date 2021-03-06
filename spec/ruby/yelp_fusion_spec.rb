RSpec.describe YelpFusion do
  it "has a version number" do
    expect(YelpFusion::VERSION).not_to be nil
  end

  it "Creates a new client" do
    expect(YelpFusion.client).not_to be nil
    expect(YelpFusion.client).to be_a YelpFusion::Client
  end

  it "Has a valid auth_token" do
  	client = YelpFusion::Client.new("auth_token")
  	expect(client).not_to be nil
  	expect(client.auth_token).to eq "auth_token"
  end

  it "Gets a response from Yelp Search" do
  	client = YelpFusion::Client.new(ENV["TEST_TOKEN"])
  	response = client.search("Dosa", "San Francisco")
  	expect(response.parse["businesses"]).not_to be nil

  end
end
