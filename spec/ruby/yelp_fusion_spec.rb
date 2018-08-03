RSpec.describe YelpFusion do
  it "has a version number" do
    expect(YelpFusion::VERSION).not_to be nil
  end

  it "Creates a new client" do
    expect(YelpFusion.client).not_to be nil
  end
end
