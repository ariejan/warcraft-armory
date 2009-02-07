require File.dirname(__FILE__) + '/../spec_helper.rb'


describe WarcraftArmory::Character do
  
  before(:each) do
    @adries = {
      :name => "Adries",
      :level => 48,
      :race => "Human",
      :race_id => 1,
      :points => 420,
      :faction => "Alliance",
      :faction_id => 0,
      :gender => "Male",
      :gender_id => 0,
      :class_name => "Warrior",
      :class_id => 1,
      :prefix => "",
      :suffix => " the Explorer", 
      :last_modified_at => DateTime.parse("February 2, 2009"),
      :realm => "Aszune",
      :guild_name => "Impact",
      :battle_group => "Blackout"
    }
  end
  
  it "should load yaml" do
    yaml = YAML.load_file("#{GEM_ROOT}/config/config.yml")["character"]
    
    WarcraftArmory::Character::CONFIG.should eql(yaml)
  end
  
  it "should be able to find a character" do
    WarcraftArmory::Utils::Parser.should_receive(:parse_url).once.and_return(xml_data('character-sheet.xml'))
    result = WarcraftArmory::Character.find(:eu, :aszune, :adries)
    
    result.should_not be_nil
    result.should be_an_instance_of(WarcraftArmory::Character)
    
    @adries.each_pair do |key, value|
      result.send(key.to_sym).should eql(value)
    end
  end
  
  it "should return a full name" do
    WarcraftArmory::Utils::Parser.should_receive(:parse_url).once.and_return(xml_data('character-sheet.xml'))
    result = WarcraftArmory::Character.find(:eu, :aszune, :adries)
    
    result.full_name.should eql([result.prefix, result.name, result.suffix].join(""))
  end
  
  it "should return a description" do
    WarcraftArmory::Utils::Parser.should_receive(:parse_url).once.and_return(xml_data('character-sheet.xml'))
    result = WarcraftArmory::Character.find(:eu, :aszune, :adries)
    
    result.description.should eql("Level #{result.level} #{result.race} #{result.class_name}")
  end
  
  def xml_data(filename)
    Hpricot.XML(open(File.dirname(__FILE__) + "/../fixtures/#{filename}"))
  end
end
