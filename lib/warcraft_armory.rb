$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

GEM_ROOT = "#{File.dirname(__FILE__)}/.." unless defined?(GEM_ROOT)

require 'rubygems'
require 'hpricot'
require 'open-uri'

require 'warcraft_armory/base'
require 'warcraft_armory/character'

require 'warcraft_armory/utils/parser'

module WarcraftArmory
  VERSION = '0.1.0'
end