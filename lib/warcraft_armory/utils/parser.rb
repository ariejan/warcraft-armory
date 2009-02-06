module WarcraftArmory
  module Utils
    class Parser # :nodoc:

      # We need to call with a FireFox user-agent, which makes the armory
      # spit out XML instead of HTML. 
      USER_AGENT = 'Mozilla/5.0 (Windows; U; Windows NT 5.0; en-GB; rv:1.8.1.4) Gecko/20070515 Firefox/2.0.0.4'
      
      # Open the +url+ and return the data retrieved as a String
      def self.parse_url(url)
        Hpricot.XML(open(url, "User-Agent" => USER_AGENT))      
      end

    end
  end
end