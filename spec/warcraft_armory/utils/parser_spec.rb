require File.dirname(__FILE__) + '/../../spec_helper.rb'


describe WarcraftArmory::Utils::Parser do

  before(:each) do
    @user_agent = 'Mozilla/5.0 (Windows; U; Windows NT 5.0; en-GB; rv:1.8.1.4) Gecko/20070515 Firefox/2.0.0.4'
  end

  it "should have the correct user agent" do
    WarcraftArmory::Utils::Parser::USER_AGENT.should eql(@user_agent)
  end
  
  it "should use the user agent string when fetching remote data" do
    url = "Some URL"
    
    WarcraftArmory::Utils::Parser.should_receive(:open).with(url, "User-Agent" => @user_agent).once.and_return("done!")
    WarcraftArmory::Utils::Parser.parse_url(url)
  end

end
