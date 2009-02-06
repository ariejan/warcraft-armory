require File.dirname(__FILE__) + '/../spec_helper.rb'


describe WarcraftArmory::Base do
  
  it "should generate a proper URL" do
    WarcraftArmory::Base.generate_url(:eu, :aszune, :nosius, 'character-sheet.xml').should
      eql("http://eu}.wowarmory.com/character-sheet.xml?r=Aszune&n=Nosius")
  end

end
