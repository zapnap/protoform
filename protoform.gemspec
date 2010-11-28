# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{protoform}
  s.version = "0.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Nick Plante"]
  s.date = %q{2010-11-28}
  s.default_executable = %q{protoform}
  s.description = %q{Generates a basic skeleton for a Mirah Android application}
  s.email = %q{nap@zerosum.org}
  s.executables = ["protoform"]
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.md"
  ]
  s.files = [
    "Gemfile",
    "Gemfile.lock",
    "History.txt",
    "LICENSE.txt",
    "README.md",
    "Rakefile",
    "VERSION",
    "bin/protoform",
    "lib/generators/android/USAGE",
    "lib/generators/android/android_generator.rb",
    "lib/generators/android/templates/AndroidManifest.xml",
    "lib/generators/android/templates/README.md",
    "lib/generators/android/templates/application.mirah",
    "lib/generators/android/templates/build.properties",
    "lib/generators/android/templates/build.xml",
    "lib/generators/android/templates/default.properties",
    "lib/generators/android/templates/local.properties",
    "lib/generators/android/templates/res/drawable-hdpi/icon.png",
    "lib/generators/android/templates/res/drawable-ldpi/icon.png",
    "lib/generators/android/templates/res/drawable-mdpi/icon.png",
    "lib/generators/android/templates/res/layout/main.xml",
    "lib/generators/android/templates/res/values/strings.xml",
    "lib/protoform.rb",
    "protoform.gemspec",
    "test/helper.rb",
    "test/protoform.rb"
  ]
  s.homepage = %q{http://github.com/zapnap/protoform}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Generates a basic skeleton for a Mirah Android application}
  s.test_files = [
    "test/helper.rb",
    "test/protoform.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rubigen>, [">= 1.5.5"])
      s.add_runtime_dependency(%q<shoulda>, [">= 0"])
      s.add_runtime_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_runtime_dependency(%q<jeweler>, ["~> 1.5.1"])
      s.add_runtime_dependency(%q<rcov>, [">= 0"])
    else
      s.add_dependency(%q<rubigen>, [">= 1.5.5"])
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.5.1"])
      s.add_dependency(%q<rcov>, [">= 0"])
    end
  else
    s.add_dependency(%q<rubigen>, [">= 1.5.5"])
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.5.1"])
    s.add_dependency(%q<rcov>, [">= 0"])
  end
end

