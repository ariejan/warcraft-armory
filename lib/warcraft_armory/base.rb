module WarcraftArmory
  
  # The Base class provides general purpose methods to access the Armory
  class Base
    
    # Generates a URL to the Armory. 
    #
    # ==== Usage
    # * <tt>location</tt> - A symbol specifying your realm's location. E.g. <tt>:eu</tt> or <tt>:us</tt>
    # * <tt>realm</tt> - A symbol specifying your realm. E.g. <tt>:aszune</tt> or <tt>:bloodhoof</tt>
    # * <tt>character</tt> - A symbol specifying the character. E.g. <tt>:adries</tt> or <tt>:dwaria</tt>
    # * <tt>file</tt> - Optionally specifies the XML file to retrieve. Defauls to <tt>character-sheet.xml</tt>
    #
    # ==== Examples
    #   WarcraftArmory::Base.generate_url(:eu, :aszune, :adries)
    #   # => http://eu.wowarmory.com/character-sheet.xml?r=Aszune&n=Adries
    #
    #   WarcraftArmory::Base.generate_url(:us, :nazgrel, :gorgious, 'character-talents.xml')
    #   # => http://us.wowarmory.com/character-talents.xml?r=Nazgrel&n=Gorgious 
    def self.generate_url(location, realm, character, file = 'character-sheet.xml')
      "http://#{location.to_s}.wowarmory.com/#{file.to_s}?r=#{realm.to_s}&n=#{character.to_s}"
    end
    
  end
end