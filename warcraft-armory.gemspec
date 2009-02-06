# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{warcraft-armory}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ariejan de Vroom"]
  s.cert_chain = ["/Users/ariejan/.gem/gem-public_cert.pem"]
  s.date = %q{2009-02-06}
  s.description = %q{The warcraft-armory gem allows your application to easily access information from the World of Warcraft Armory site.}
  s.email = ["ariejan@ariejan.net"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.rdoc"]
  s.files = ["History.txt", "Manifest.txt", "README.rdoc", "Rakefile", "config/config.yml", "lib/warcraft-armory.rb", "lib/warcraft_armory.rb", "lib/warcraft_armory/base.rb", "lib/warcraft_armory/character.rb", "lib/warcraft_armory/utils/parser.rb", "script/console", "script/destroy", "script/generate", "spec/fixtures/character-sheet.xml", "spec/spec.opts", "spec/spec_helper.rb", "spec/warcraft_armory/base_spec.rb", "spec/warcraft_armory/character_spec.rb", "spec/warcraft_armory/utils/parser_spec.rb", "tasks/rspec.rake"]
  s.has_rdoc = true
  s.homepage = %q{http://ariejan.net/tags/warcraft-armory}
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{warcraft-armory}
  s.rubygems_version = %q{1.3.1}
  s.signing_key = %q{/Users/ariejan/.gem/gem-private_key.pem}
  s.summary = %q{The warcraft-armory gem allows your application to easily access information from the World of Warcraft Armory site.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<hpricot>, [">= 0.6.164"])
      s.add_development_dependency(%q<newgem>, [">= 1.2.3"])
      s.add_development_dependency(%q<hoe>, [">= 1.8.0"])
    else
      s.add_dependency(%q<hpricot>, [">= 0.6.164"])
      s.add_dependency(%q<newgem>, [">= 1.2.3"])
      s.add_dependency(%q<hoe>, [">= 1.8.0"])
    end
  else
    s.add_dependency(%q<hpricot>, [">= 0.6.164"])
    s.add_dependency(%q<newgem>, [">= 1.2.3"])
    s.add_dependency(%q<hoe>, [">= 1.8.0"])
  end
end
