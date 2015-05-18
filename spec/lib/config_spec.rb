require "spec_helper"

describe Bucky::Config do

  it "has an endpoint url" do
    Bucky::Config.configure(endpoint: "https://checkout.buckaroo.nl/nvp/")
    expect(Bucky::Config.endpoint)
      .to eq("https://checkout.buckaroo.nl/nvp/")
  end

  it "has a default endpoint url" do
    Bucky::Config.configure
    expect(Bucky::Config.endpoint)
      .to eq("https://testcheckout.buckaroo.nl/nvp/")
  end

  it "has a secret" do
    Bucky::Config.configure(secret: "this-is-very-secret")
    expect(Bucky::Config.secret)
      .to eq("this-is-very-secret")
  end

  it "has a default secret url" do
    Bucky::Config.configure
    expect(Bucky::Config.secret)
      .to eq("")
  end

  it "has a default websitekey" do
    Bucky::Config.configure
    expect(Bucky::Config.websitekey)
      .to eq("")
  end

  it "has a websitekey" do
    Bucky::Config.configure(websitekey: "very-secure")
    expect(Bucky::Config.websitekey)
      .to eq("very-secure")
  end

  it "has a culture" do
    Bucky::Config.configure(culture: "en-GB")
    expect(Bucky::Config.culture)
      .to eq("en-GB")
  end

  it "has a default culture" do
    Bucky::Config.configure
    expect(Bucky::Config.culture)
      .to eq("nl-NL")
  end

end
